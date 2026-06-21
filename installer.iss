[Setup]
AppName=Grok Desktop
AppVersion=1.0.0
AppPublisher=Ryanabcraft
AppPublisherURL=https://github.com/Ryanabcraft/grok-desktop
AppSupportURL=https://github.com/Ryanabcraft/grok-desktop/issues
DefaultDirName={localappdata}\Grok Desktop
DefaultGroupName=Grok Desktop
UninstallDisplayIcon={app}\Grok.exe
UninstallDisplayName=Grok Desktop
OutputDir=dist_installer
OutputBaseFilename=Grok-Setup
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=lowest

[Languages]
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "dist_py\Grok.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{commondesktop}\Grok"; Filename: "{app}\Grok.exe"; WorkingDir: "{app}"; Tasks: desktopicon
Name: "{group}\Grok Desktop"; Filename: "{app}\Grok.exe"; WorkingDir: "{app}"
Name: "{group}\Desinstalar Grok Desktop"; Filename: "{uninstallexe}"

[Tasks]
Name: "desktopicon"; Description: "Criar atalho na &Área de Trabalho"; GroupDescription: "Atalhos:"; Flags: checkedonce

[Run]
Filename: "{app}\Grok.exe"; Description: "Executar Grok Desktop"; Flags: postinstall nowait skipifsilent
