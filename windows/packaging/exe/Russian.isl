; *** Inno Setup version 6.1.0+ Russian messages ***
;
; To download user-contributed translations of this file, go to:
;   https://jrsoftware.org/files/istrans/
;
; Note: When translating this text, do not add periods (.) to the end of
; messages that didn't have them already, because on those messages Inno
; Setup adds the periods automatically (appending a period would result in
; two periods being displayed).
;
; Maintained by [Your Name]
; Email: [Your Email]
; Translation based on network resource
; The latest Translation is on [GitHub link or other source]

[LangOptions]
; The following three entries are very important. Be sure to read and 
; understand the '[LangOptions] section' topic in the help file.
LanguageName=Русский
; If Language Name display incorrect, uncomment next line
; LanguageName=<0420><0443><0441><0441><043A><0438><0439>
; About LanguageID, to reference link:
; https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-lcid/a9eac961-e77d-41a6-90a5-ce1a8b0cdb9c
LanguageID=$0419
LanguageCodePage=1251
; If the language you are translating to requires special font faces or
; sizes, uncomment any of the following entries and change them accordingly.
DialogFontName=Arial
;DialogFontSize=8
WelcomeFontName=Arial
;WelcomeFontSize=12
TitleFontName=Arial
;TitleFontSize=29
;CopyrightFontName=Arial
;CopyrightFontSize=8

[Messages]

; *** Заголовки приложений
SetupAppTitle=Установка
SetupWindowTitle=Установка - %1
UninstallAppTitle=Удаление
UninstallAppFullTitle=Удаление %1

; *** Общие сообщения
InformationTitle=Информация
ConfirmTitle=Подтверждение
ErrorTitle=Ошибка

; *** Сообщения SetupLdr
SetupLdrStartupMessage=Сейчас будет установлена программа %1. Вы хотите продолжить?
LdrCannotCreateTemp=Невозможно создать временный файл. Установка прервана
LdrCannotExecTemp=Невозможно выполнить файл во временном каталоге. Установка прервана
HelpTextNote=

; *** Сообщения об ошибках при запуске
LastErrorMessage=%1.%n%nОшибка %2: %3
SetupFileMissing=Файл %1 отсутствует в каталоге установки. Пожалуйста, исправьте проблему или получите новую копию программы
SetupFileCorrupt=Файлы установки повреждены. Пожалуйста, получите новую копию программы
SetupFileCorruptOrWrongVer=Файлы установки повреждены или несовместимы с этой версией установщика. Пожалуйста, исправьте проблему или получите новую копию программы
InvalidParameter=Недопустимый параметр в командной строке:%n%n%1
SetupAlreadyRunning=Установщик уже запущен
WindowsVersionNotSupported=Эта программа не поддерживает версию Windows, запущенную на вашем компьютере
WindowsServicePackRequired=Для этой программы требуется %1 Service Pack %2 или выше
NotOnThisPlatform=Эта программа не будет работать на %1
OnlyOnThisPlatform=Эта программа должна быть запущена на %1
OnlyOnTheseArchitectures=Эта программа может быть установлена только на версиях Windows, предназначенных для следующих архитектур процессоров:%n%n%1
WinVersionTooLowError=Для этой программы требуется %1 версии %2 или выше
WinVersionTooHighError=Эта программа не может быть установлена на %1 версии %2 или выше
AdminPrivilegesRequired=Для установки этой программы вы должны войти в систему как администратор
PowerUserPrivilegesRequired=Для установки этой программы вы должны войти в систему как администратор или как член группы Power Users
SetupAppRunningError=Установщик обнаружил, что %1 в данный момент запущена.%n%nПожалуйста, закройте все экземпляры этой программы, затем нажмите "ОК" для продолжения или "Отмена" для выхода
UninstallAppRunningError=Программа удаления обнаружила, что %1 в данный момент запущена.%n%nПожалуйста, закройте все экземпляры этой программы, затем нажмите "ОК" для продолжения или "Отмена" для выхода

; *** Вопросы при запуске
PrivilegesRequiredOverrideTitle=Выбор режима установки
PrivilegesRequiredOverrideInstruction=Выберите режим установки
PrivilegesRequiredOverrideText1=%1 может быть установлена для всех пользователей (требуются права администратора) или только для вас
PrivilegesRequiredOverrideText2=%1 может быть установлена только для вас или для всех пользователей (требуются права администратора)
PrivilegesRequiredOverrideAllUsers=Установить для &всех пользователей
PrivilegesRequiredOverrideAllUsersRecommended=Установить для &всех пользователей (рекомендуется)
PrivilegesRequiredOverrideCurrentUser=Установить только для &меня
PrivilegesRequiredOverrideCurrentUserRecommended=Установить только для &меня (рекомендуется)

; *** Прочие ошибки
ErrorCreatingDir=Установщику не удалось создать каталог "%1"
ErrorTooManyFilesInDir=Невозможно создать файл в каталоге "%1", так как он содержит слишком много файлов

; *** Общие сообщения установщика
ExitSetupTitle=Выход из установщика
ExitSetupMessage=Установка не завершена. Если вы выйдете сейчас, программа не будет установлена.%n%nВы можете запустить установщик позже, чтобы завершить установку.%n%nВыйти из установщика?
AboutSetupMenuItem=&О программе установщика...
AboutSetupTitle=О программе установщика
AboutSetupMessage=%1 версия %2%n%3%n%nДомашняя страница %1:%n%4
AboutSetupNote=
TranslatorNote=Перевод выполнен [Your Name]

; *** Кнопки
ButtonBack=< &Назад
ButtonNext=&Далее >
ButtonInstall=&Установить
ButtonOK=ОК
ButtonCancel=Отмена
ButtonYes=&Да
ButtonYesToAll=Да для &всех
ButtonNo=&Нет
ButtonNoToAll=Н&ет для всех
ButtonFinish=&Готово
ButtonBrowse=&Обзор...
ButtonWizardBrowse=Об&зор...
ButtonNewFolder=&Создать папку

; *** Сообщения диалога "Выбор языка"
SelectLanguageTitle=Выбор языка установки
SelectLanguageLabel=Выберите язык, который будет использоваться во время установки

; *** Общий текст мастера
ClickNext=Нажмите "Далее" для продолжения или "Отмена" для выхода из установщика
BeveledLabel=
BrowseDialogTitle=Выбор папки
BrowseDialogLabel=Выберите папку в списке ниже, затем нажмите "ОК"
NewFolderName=Новая папка

; *** Страница мастера "Добро пожаловать"
WelcomeLabel1=Добро пожаловать в мастер установки [name]
WelcomeLabel2=Сейчас будет установлена программа [name/ver] на ваш компьютер.%n%nРекомендуется закрыть все другие приложения перед продолжением

; *** Страница мастера "Пароль"
WizardPassword=Пароль
PasswordLabel1=Эта установка защищена паролем
PasswordLabel3=Пожалуйста, введите пароль, затем нажмите "Далее" для продолжения. Пароль чувствителен к регистру
PasswordEditLabel=&Пароль:
IncorrectPassword=Введенный вами пароль неверен, пожалуйста, попробуйте еще раз

; *** Страница мастера "Лицензионное соглашение"
WizardLicense=Лицензионное соглашение
LicenseLabel=Пожалуйста, прочтите следующую важную информацию перед продолжением
LicenseLabel3=Пожалуйста, прочтите следующее лицензионное соглашение. Вы должны принять условия этого соглашения, чтобы продолжить установку
LicenseAccepted=Я &принимаю соглашение
LicenseNotAccepted=Я &не принимаю соглашение

; *** Страницы мастера "Информация"
WizardInfoBefore=Информация
InfoBeforeLabel=Пожалуйста, прочтите следующую важную информацию перед продолжением
InfoBeforeClickLabel=Когда вы будете готовы продолжить установку, нажмите "Далее"
WizardInfoAfter=Информация
InfoAfterLabel=Пожалуйста, прочтите следующую важную информацию перед продолжением
InfoAfterClickLabel=Когда вы будете готовы продолжить установку, нажмите "Далее"

; *** Страница мастера "Информация о пользователе"
WizardUserInfo=Информация о пользователе
UserInfoDesc=Пожалуйста, введите вашу информацию
UserInfoName=&Имя пользователя:
UserInfoOrg=&Организация:
UserInfoSerial=&Серийный номер:
UserInfoNameRequired=Вы должны ввести имя

; *** Страница мастера "Выбор папки назначения"
WizardSelectDir=Выбор папки назначения
SelectDirDesc=Куда следует установить [name]?
SelectDirLabel3=Установщик установит [name] в следующую папку
SelectDirBrowseLabel=Нажмите "Далее" для продолжения. Если вы хотите выбрать другую папку, нажмите "Обзор"
DiskSpaceGBLabel=Требуется не менее [gb] ГБ свободного места на диске
DiskSpaceMBLabel=Требуется не менее [mb] МБ свободного места на диске
CannotInstallToNetworkDrive=Установщик не может установить на сетевой диск
CannotInstallToUNCPath=Установщик не может установить по UNC-пути
InvalidPath=Вы должны ввести полный путь с буквой диска; например:%n%nC:\APP%n%nили UNC-путь в виде:%n%n\\server\share
InvalidDrive=Выбранный вами диск или UNC-ресурс не существует или недоступен. Пожалуйста, выберите другой
DiskSpaceWarningTitle=Недостаточно места на диске
DiskSpaceWarning=Для установки требуется не менее %1 КБ свободного места, но на выбранном диске доступно только %2 КБ.%n%nВы хотите продолжить в любом случае?
DirNameTooLong=Имя папки или путь слишком длинны
InvalidDirName=Имя папки недопустимо
BadDirName32=Имена папок не могут содержать ни один из следующих символов:%n%n%1
DirExistsTitle=Папка существует
DirExists=Папка:%n%n%1%n%nуже существует. Вы все равно хотите установить в эту папку?
DirDoesntExistTitle=Папка не существует
DirDoesntExist=Папка:%n%n%1%n%nне существует. Вы хотите создать ее?

; *** Страница мастера "Выбор компонентов"
WizardSelectComponents=Выбор компонентов
SelectComponentsDesc=Какие компоненты следует установить?
SelectComponentsLabel2=Выберите компоненты, которые вы хотите установить; снимите флажки с компонентов, которые вы не хотите устанавливать. Нажмите "Далее" для продолжения
FullInstallation=Полная установка
CompactInstallation=Компактная установка
CustomInstallation=Выборочная установка
NoUninstallWarningTitle=Компоненты существуют
NoUninstallWarning=Установщик обнаружил, что следующие компоненты уже установлены на вашем компьютере:%n%n%1%n%nСнятие выбора этих компонентов не приведет к их удалению.%n%nВы хотите продолжить в любом случае?
ComponentSize1=%1 КБ
ComponentSize2=%1 МБ
ComponentsDiskSpaceGBLabel=Текущий выбор требует не менее [gb] ГБ места на диске
ComponentsDiskSpaceMBLabel=Текущий выбор требует не менее [mb] МБ места на диске

; *** Страница мастера "Выбор дополнительных задач"
WizardSelectTasks=Выбор дополнительных задач
SelectTasksDesc=Какие дополнительные задачи следует выполнить?
SelectTasksLabel2=Выберите дополнительные задачи, которые установщик должен выполнить при установке [name], затем нажмите "Далее"

; *** Страница мастера "Выбор папки в меню 'Пуск'"
WizardSelectProgramGroup=Выбор папки в меню "Пуск"
SelectStartMenuFolderDesc=Где установщик должен разместить ярлыки программы?
SelectStartMenuFolderLabel3=Установщик создаст ярлыки программы в следующей папке меню "Пуск"
SelectStartMenuFolderBrowseLabel=Нажмите "Далее" для продолжения. Если вы хотите выбрать другую папку, нажмите "Обзор"
MustEnterGroupName=Вы должны ввести имя папки
GroupNameTooLong=Имя папки или путь слишком длинны
InvalidGroupName=Имя папки недопустимо
BadGroupName=Имя папки не может содержать ни один из следующих символов:%n%n%1
NoProgramGroupCheck2=&Не создавать папку в меню "Пуск"

; *** Страница мастера "Готово к установке"
WizardReady=Готово к установке
ReadyLabel1=Установщик готов приступить к установке [name] на ваш компьютер
ReadyLabel2a=Нажмите "Установить" для продолжения установки или "Назад", если вы хотите просмотреть или изменить какие-либо настройки
ReadyLabel2b=Нажмите "Установить" для продолжения установки
ReadyMemoUserInfo=Информация о пользователе:
ReadyMemoDir=Папка назначения:
ReadyMemoType=Тип установки:
ReadyMemoComponents=Выбранные компоненты:
ReadyMemoGroup=Папка в меню "Пуск":
ReadyMemoTasks=Дополнительные задачи:

; *** Страница мастера TDownloadWizardPage и DownloadTemporaryFile
DownloadingLabel=Загрузка дополнительных файлов...
ButtonStopDownload=&Остановить загрузку
StopDownload=Вы уверены, что хотите остановить загрузку?
ErrorDownloadAborted=Загрузка прервана
ErrorDownloadFailed=Загрузка не удалась: %1 %2
ErrorDownloadSizeFailed=Не удалось получить размер: %1 %2
ErrorFileHash1=Не удалось проверить хеш файла: %1
ErrorFileHash2=Неверный хеш файла: ожидалось %1, получено %2
ErrorProgress=Неверный прогресс: %1 из %2
ErrorFileSize=Неверный размер файла: ожидалось %1, получено %2

; *** Страница мастера "Подготовка к установке"
WizardPreparing=Подготовка к установке
PreparingDesc=Установщик готовится к установке [name] на ваш компьютер
PreviousInstallNotCompleted=Предыдущая установка/удаление программы не была завершена. Вам нужно перезагрузить компьютер, чтобы завершить эту установку.%n%nПосле перезагрузки компьютера запустите установщик снова, чтобы завершить установку [name]
CannotContinue=Установщик не может продолжить. Пожалуйста, нажмите "Отмена" для выхода
ApplicationsFound=Следующие приложения используют файлы, которые необходимо обновить установщику. Рекомендуется разрешить установщику автоматически закрыть эти приложения
ApplicationsFound2=Следующие приложения используют файлы, которые необходимо обновить установщику. Рекомендуется разрешить установщику автоматически закрыть эти приложения. После завершения установки установщик попытается перезапустить приложения
CloseApplications=&Автоматически закрыть приложения
DontCloseApplications=&Не закрывать приложения
ErrorCloseApplications=Установщику не удалось автоматически закрыть все приложения. Перед продолжением рекомендуется закрыть все приложения, использующие файлы, которые необходимо обновить установщику
PrepareToInstallNeedsRestart=Установщику необходимо перезагрузить ваш компьютер. После перезагрузки компьютера запустите установщик снова, чтобы завершить установку [name].%n%nВы хотите перезагрузить сейчас?

; *** Страница мастера "Установка"
WizardInstalling=Установка
InstallingLabel=Пожалуйста, подождите, пока установщик устанавливает [name] на ваш компьютер

; *** Страница мастера "Установка завершена"
FinishedHeadingLabel=Завершение мастера установки [name]
FinishedLabelNoIcons=Установщик завершил установку [name] на ваш компьютер
FinishedLabel=Установщик завершил установку [name] на ваш компьютер. Приложение можно запустить, выбрав установленные ярлыки
ClickFinish=Нажмите "Готово" для выхода из установщика
FinishedRestartLabel=Чтобы завершить установку [name], установщик должен перезагрузить ваш компьютер. Вы хотите сделать это сейчас?
FinishedRestartMessage=Чтобы завершить установку [name], установщик должен перезагрузить ваш компьютер.%n%nВы хотите сделать это сейчас?
ShowReadmeCheck=Да, я хочу просмотреть файл README
YesRadio=&Да, перезагрузить компьютер сейчас
NoRadio=&Нет, я перезагружу компьютер позже
RunEntryExec=Запустить %1
RunEntryShellExec=Просмотреть %1

; *** Сообщения "Установщику нужен следующий диск"
ChangeDiskTitle=Установщику нужен следующий диск
SelectDiskLabel2=Пожалуйста, вставьте диск %1 и нажмите "ОК".%n%nЕсли файлы с этого диска можно найти в папке, отличной от указанной ниже, введите правильный путь или нажмите "Обзор"
PathLabel=&Путь:
FileNotInDir2=Файл "%1" не найден в "%2". Пожалуйста, вставьте правильный диск или выберите другую папку
SelectDirectoryLabel=Пожалуйста, укажите расположение следующего диска

; *** Сообщения о состоянии установки
SetupAborted=Установка не была завершена.%n%nПожалуйста, исправьте проблему и запустите установщик снова
AbortRetryIgnoreSelectAction=Выберите действие
AbortRetryIgnoreRetry=&Повторить попытку
AbortRetryIgnoreIgnore=&Игнорировать ошибку и продолжить
AbortRetryIgnoreCancel=Отменить установку

; *** Сообщения о состоянии установки
StatusClosingApplications=Закрытие приложений...
StatusCreateDirs=Создание каталогов...
StatusExtractFiles=Извлечение файлов...
StatusCreateIcons=Создание ярлыков...
StatusCreateIniEntries=Создание записей INI...
StatusCreateRegistryEntries=Создание записей реестра...
StatusRegisterFiles=Регистрация файлов...
StatusSavingUninstall=Сохранение информации для удаления...
StatusRunProgram=Завершение установки...
StatusRestartingApplications=Перезапуск приложений...
StatusRollback=Откат изменений...

; *** Прочие ошибки
ErrorInternal2=Внутренняя ошибка: %1
ErrorFunctionFailedNoCode=%1 не удалась
ErrorFunctionFailed=%1 не удалась; код %2
ErrorFunctionFailedWithMessage=%1 не удалась; код %2.%n%3
ErrorExecutingProgram=Невозможно выполнить файл:%n%1

; *** Ошибки реестра
ErrorRegOpenKey=Ошибка открытия ключа реестра:%n%1\%2
ErrorRegCreateKey=Ошибка создания ключа реестра:%n%1\%2
ErrorRegWriteKey=Ошибка записи в ключ реестра:%n%1\%2

; *** Ошибки INI
ErrorIniEntry=Ошибка создания записи INI в файле "%1"

; *** Ошибки копирования файлов
FileAbortRetryIgnoreSkipNotRecommended=&Пропустить этот файл (не рекомендуется)
FileAbortRetryIgnoreIgnoreNotRecommended=&Игнорировать ошибку и продолжить (не рекомендуется)
SourceIsCorrupted=Исходный файл поврежден
SourceDoesntExist=Исходный файл "%1" не существует
ExistingFileReadOnly2=Существующий файл не может быть заменен, так как он помечен как "только для чтения"
ExistingFileReadOnlyRetry=&Удалить атрибут "только для чтения" и повторить попытку
ExistingFileReadOnlyKeepExisting=&Сохранить существующий файл
ErrorReadingExistingDest=Произошла ошибка при попытке чтения существующего файла:
FileExistsSelectAction=Выберите действие
FileExists2=Файл уже существует
FileExistsOverwriteExisting=&Перезаписать существующий файл
FileExistsKeepExisting=&Сохранить существующий файл
FileExistsOverwriteOrKeepAll=&Выполнить это действие для всех конфликтов
ExistingFileNewerSelectAction=Выберите действие
ExistingFileNewer2=Существующий файл новее, чем тот, который установщик пытается установить
ExistingFileNewerOverwriteExisting=&Перезаписать существующий файл
ExistingFileNewerKeepExisting=&Сохранить существующий файл (рекомендуется)
ExistingFileNewerOverwriteOrKeepAll=&Выполнить это действие для всех конфликтов
ErrorChangingAttr=Произошла ошибка при попытке изменения атрибутов существующего файла:
ErrorCreatingTemp=Произошла ошибка при попытке создания файла в каталоге назначения:
ErrorReadingSource=Произошла ошибка при попытке чтения исходного файла:
ErrorCopying=Произошла ошибка при попытке копирования файла:
ErrorReplacingExistingFile=Произошла ошибка при попытке замены существующего файла:
ErrorRestartReplace=Не удалось выполнить замену при перезапуске:
ErrorRenamingTemp=Произошла ошибка при попытке переименования файла в каталоге назначения:
ErrorRegisterServer=Невозможно зарегистрировать DLL/OCX: %1
ErrorRegSvr32Failed=RegSvr32 завершился с кодом ошибки %1
ErrorRegisterTypeLib=Невозможно зарегистрировать библиотеку типов: %1

; *** Метки отображения имени при удалении
UninstallDisplayNameMark=%1 (%2)
UninstallDisplayNameMarks=%1 (%2, %3)
UninstallDisplayNameMark32Bit=32-разрядная
UninstallDisplayNameMark64Bit=64-разрядная
UninstallDisplayNameMarkAllUsers=Все пользователи
UninstallDisplayNameMarkCurrentUser=Текущий пользователь

; *** Ошибки после установки
ErrorOpeningReadme=Произошла ошибка при попытке открытия файла README
ErrorRestartingComputer=Установщику не удалось перезагрузить компьютер. Пожалуйста, сделайте это вручную

; *** Сообщения удаления
UninstallNotFound=Файл "%1" не существует. Невозможно удалить
UninstallOpenError=Файл "%1" не может быть открыт. Невозможно удалить
UninstallUnsupportedVer=Файл журнала удаления "%1" находится в формате, не распознаваемом этой версией деинсталлятора. Невозможно удалить
UninstallUnknownEntry=В журнале удаления обнаружена неизвестная запись (%1)
ConfirmUninstall=Вы уверены, что хотите полностью удалить %1 и все его компоненты?
UninstallOnlyOnWin64=Эта установка может быть удалена только в 64-разрядной Windows
OnlyAdminCanUninstall=Эта установка может быть удалена только пользователем с правами администратора
UninstallStatusLabel=Пожалуйста, подождите, пока %1 удаляется с вашего компьютера
UninstalledAll=%1 был успешно удален с вашего компьютера
UninstalledMost=Удаление %1 завершено.%n%nНекоторые элементы не удалось удалить. Их можно удалить вручную
UninstalledAndNeedsRestart=Для завершения удаления %1 необходимо перезагрузить компьютер.%n%nВы хотите сделать это сейчас?
UninstallDataCorrupted=Файл "%1" поврежден. Невозможно удалить

; *** Сообщения о состоянии удаления
ConfirmDeleteSharedFileTitle=Удалить общий файл?
ConfirmDeleteSharedFile2=Система указывает, что следующий общий файл больше не используется ни одной программой. Вы хотите, чтобы деинсталлятор удалил этот общий файл?%n%nЕсли какие-либо программы все еще используют этот файл, и он будет удален, эти программы могут работать неправильно. Если вы не уверены, выберите "Нет". Оставление файла в системе не причинит вреда
SharedFileNameLabel=Имя файла:
SharedFileLocationLabel=Расположение:
WizardUninstalling=Статус удаления
StatusUninstalling=Удаление %1...

; *** Причины блокировки выключения
ShutdownBlockReasonInstallingApp=Установка %1
ShutdownBlockReasonUninstallingApp=Удаление %1

; *** Пользовательские сообщения
[CustomMessages]

NameAndVersion=%1 версия %2
AdditionalIcons=Дополнительные ярлыки:
CreateDesktopIcon=Создать ярлык на &рабочем столе
CreateQuickLaunchIcon=Создать ярлык в &панели быстрого запуска
ProgramOnTheWeb=%1 в Интернете
UninstallProgram=Удалить %1
LaunchProgram=Запустить %1
AssocFileExtension=&Ассоциировать %1 с расширением файла %2
AssocingFileExtension=Ассоциирование %1 с расширением файла %2...
AutoStartProgramGroupDescription=Автозагрузка:
AutoStartProgram=Автоматически запускать %1
AddonHostProgramNotFound=%1 не найден в выбранной вами папке.%n%nВы хотите продолжить в любом случае?