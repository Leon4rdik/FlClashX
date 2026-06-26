import 'dart:convert';

class ProxyUriProfile {
  const ProxyUriProfile({
    required this.label,
    required this.content,
  });

  final String label;
  final String content;
}

class ProxyUriConverter {
  const ProxyUriConverter();

  ProxyUriProfile? tryConvert(String value) {
    final source = value.trim();
    if (!source.toLowerCase().startsWith('vless://')) {
      return null;
    }
    return _convertVless(source);
  }

  ProxyUriProfile _convertVless(String source) {
    final uri = Uri.parse(source);
    if (uri.scheme.toLowerCase() != 'vless') {
      throw const FormatException('Only vless:// links are supported');
    }

    final uuid = _decode(uri.userInfo).split(':').first.trim();
    if (uuid.isEmpty) {
      throw const FormatException('VLESS link has no UUID');
    }
    if (uri.host.isEmpty) {
      throw const FormatException('VLESS link has no server');
    }

    final params = uri.queryParameters.map(
      (key, value) => MapEntry(key.toLowerCase(), value),
    );
    final network = _first(params, ['type', 'network'])?.toLowerCase();
    final security = _first(params, ['security'])?.toLowerCase();
    final tls = security == 'tls' || security == 'reality';
    final port = uri.port == 0 ? (tls ? 443 : 80) : uri.port;
    final name = _profileName(uri, uri.host, port);

    final proxy = <String, dynamic>{
      'name': name,
      'type': 'vless',
      'server': uri.host,
      'port': port,
      'uuid': uuid,
      'udp': true,
    };

    final encryption = _first(params, ['encryption']);
    if (encryption != null && encryption.isNotEmpty) {
      proxy['encryption'] = encryption;
    }
    final flow = _first(params, ['flow']);
    if (flow != null && flow.isNotEmpty) {
      proxy['flow'] = flow;
    }
    if (network != null && network.isNotEmpty && network != 'tcp') {
      proxy['network'] = network;
    }
    if (tls) {
      proxy['tls'] = true;
    }

    _putString(proxy, 'servername', params, ['sni', 'servername']);
    _putString(proxy, 'client-fingerprint', params, [
      'fp',
      'client-fingerprint',
    ]);
    _putString(proxy, 'fingerprint', params, ['fingerprint']);
    _putBool(proxy, 'skip-cert-verify', params, [
      'allowinsecure',
      'skip-cert-verify',
    ]);
    _putList(proxy, 'alpn', params, ['alpn']);
    _putString(proxy, 'packet-encoding', params, [
      'packetencoding',
      'packet-encoding',
    ]);

    if (security == 'reality') {
      final realityOpts = <String, dynamic>{};
      _putString(realityOpts, 'public-key', params, ['pbk', 'public-key']);
      _putString(realityOpts, 'short-id', params, ['sid', 'short-id']);
      _putBool(realityOpts, 'support-x25519mlkem768', params, [
        'pqv',
        'support-x25519mlkem768',
      ]);
      if (realityOpts.isNotEmpty) {
        proxy['reality-opts'] = realityOpts;
      }
    }

    if (network == 'xhttp') {
      final xhttpOpts = _xhttpOptions(params);
      if (xhttpOpts.isNotEmpty) {
        proxy['xhttp-opts'] = xhttpOpts;
      }
    }

    const groupName = 'Proxy';
    final config = <String, dynamic>{
      'proxies': [proxy],
      'proxy-groups': [
        {
          'name': groupName,
          'type': 'select',
          'proxies': [name],
        }
      ],
      'rules': ['MATCH,$groupName'],
    };

    return ProxyUriProfile(
      label: name,
      content: const JsonEncoder.withIndent('  ').convert(config),
    );
  }

  Map<String, dynamic> _xhttpOptions(Map<String, String> params) {
    final opts = <String, dynamic>{};
    _putString(opts, 'path', params, ['path']);
    _putString(opts, 'host', params, ['host', 'authority']);
    _putString(opts, 'mode', params, ['mode']);
    _putBool(opts, 'no-grpc-header', params, ['no-grpc-header']);
    _putString(opts, 'x-padding-bytes', params, ['x-padding-bytes']);
    _putBool(opts, 'x-padding-obfs-mode', params, ['x-padding-obfs-mode']);
    _putString(opts, 'x-padding-key', params, ['x-padding-key']);
    _putString(opts, 'x-padding-header', params, ['x-padding-header']);
    _putString(opts, 'x-padding-placement', params, ['x-padding-placement']);
    _putString(opts, 'x-padding-method', params, ['x-padding-method']);
    _putString(opts, 'uplink-http-method', params, ['uplink-http-method']);
    _putString(opts, 'session-placement', params, ['session-placement']);
    _putString(opts, 'session-key', params, ['session-key']);
    _putString(opts, 'seq-placement', params, ['seq-placement']);
    _putString(opts, 'seq-key', params, ['seq-key']);
    _putString(opts, 'uplink-data-placement', params, [
      'uplink-data-placement',
    ]);
    _putString(opts, 'uplink-data-key', params, ['uplink-data-key']);
    _putString(opts, 'uplink-chunk-size', params, ['uplink-chunk-size']);
    _putInt(opts, 'sc-max-each-post-bytes', params, [
      'sc-max-each-post-bytes',
    ]);
    _putString(opts, 'sc-min-posts-interval-ms', params, [
      'sc-min-posts-interval-ms',
    ]);

    final headers = _headers(params);
    if (headers.isNotEmpty) {
      opts['headers'] = headers;
    }

    final reuseSettings = _prefixedOptions(params, 'reuse-', {
      'max-connections',
      'max-concurrency',
      'c-max-reuse-times',
      'h-max-request-times',
      'h-max-reusable-secs',
      'h-keep-alive-period',
    });
    if (reuseSettings.isNotEmpty) {
      opts['reuse-settings'] = reuseSettings;
    }

    final extra = _jsonObject(_first(params, ['extra']));
    if (extra != null) {
      _copyKnown(extra, opts, {
        'path',
        'host',
        'mode',
        'headers',
        'no-grpc-header',
        'x-padding-bytes',
        'x-padding-obfs-mode',
        'x-padding-key',
        'x-padding-header',
        'x-padding-placement',
        'x-padding-method',
        'uplink-http-method',
        'session-placement',
        'session-key',
        'seq-placement',
        'seq-key',
        'uplink-data-placement',
        'uplink-data-key',
        'uplink-chunk-size',
        'sc-max-each-post-bytes',
        'sc-min-posts-interval-ms',
        'reuse-settings',
        'download-settings',
      });
    }

    return opts;
  }

  String _profileName(Uri uri, String host, int port) {
    if (uri.fragment.isNotEmpty) {
      return _decode(uri.fragment);
    }
    return '$host:$port';
  }

  Map<String, String> _headers(Map<String, String> params) {
    final headers = <String, String>{};
    final host = _first(params, ['host']);
    if (host != null && host.isNotEmpty) {
      headers['Host'] = host;
    }

    final rawHeaders = _first(params, ['headers', 'header']);
    if (rawHeaders == null || rawHeaders.isEmpty) {
      return headers;
    }

    final jsonHeaders = _jsonObject(rawHeaders);
    if (jsonHeaders != null) {
      for (final entry in jsonHeaders.entries) {
        final value = entry.value;
        if (value is String) {
          headers[entry.key] = value;
        }
      }
      return headers;
    }

    for (final item in rawHeaders.split(RegExp(r'[|,]'))) {
      final separator = item.contains(':') ? ':' : '=';
      final index = item.indexOf(separator);
      if (index <= 0) {
        continue;
      }
      final key = item.substring(0, index).trim();
      final value = item.substring(index + 1).trim();
      if (key.isNotEmpty && value.isNotEmpty) {
        headers[key] = value;
      }
    }
    return headers;
  }

  Map<String, dynamic> _prefixedOptions(
    Map<String, String> params,
    String prefix,
    Set<String> names,
  ) {
    final options = <String, dynamic>{};
    for (final name in names) {
      final value = params['$prefix$name'];
      if (value != null && value.isNotEmpty) {
        options[name] = value;
      }
    }
    return options;
  }

  Map<String, dynamic>? _jsonObject(String? value) {
    if (value == null || value.trim().isEmpty) {
      return null;
    }
    try {
      final decoded = json.decode(value);
      if (decoded is Map) {
        return decoded.map(
          (key, value) => MapEntry(key.toString(), value),
        );
      }
    } catch (_) {}
    return null;
  }

  void _copyKnown(
    Map<String, dynamic> source,
    Map<String, dynamic> target,
    Set<String> keys,
  ) {
    for (final key in keys) {
      final value = source[key];
      if (value != null) {
        target[key] = value;
      }
    }
  }

  void _putString(
    Map<String, dynamic> target,
    String key,
    Map<String, String> params,
    List<String> names,
  ) {
    final value = _first(params, names);
    if (value != null && value.isNotEmpty) {
      target[key] = value;
    }
  }

  void _putBool(
    Map<String, dynamic> target,
    String key,
    Map<String, String> params,
    List<String> names,
  ) {
    final value = _first(params, names);
    if (value == null || value.isEmpty) {
      return;
    }
    target[key] = switch (value.toLowerCase()) {
      '1' || 'true' || 'yes' || 'y' => true,
      _ => false,
    };
  }

  void _putInt(
    Map<String, dynamic> target,
    String key,
    Map<String, String> params,
    List<String> names,
  ) {
    final value = _first(params, names);
    if (value == null || value.isEmpty) {
      return;
    }
    final parsed = int.tryParse(value);
    if (parsed != null) {
      target[key] = parsed;
    }
  }

  void _putList(
    Map<String, dynamic> target,
    String key,
    Map<String, String> params,
    List<String> names,
  ) {
    final value = _first(params, names);
    if (value == null || value.isEmpty) {
      return;
    }
    target[key] = value
        .split(',')
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .toList();
  }

  String? _first(Map<String, String> params, List<String> names) {
    for (final name in names) {
      final value = params[name.toLowerCase()];
      if (value != null) {
        return value;
      }
    }
    return null;
  }

  String _decode(String value) => Uri.decodeComponent(value);
}

const proxyUriConverter = ProxyUriConverter();
