[Setup]
AppName=FlowOverStart
AppVersion=1.1
DefaultDirName={autopf}\FlowOverStart
DefaultGroupName=FlowOverStart
OutputBaseFilename=FlowOverStartInstall
SetupIconFile=FlowOverStart.ico
Compression=lzma
SolidCompression=yes

[Files]
Source: "FlowOverStart.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "FlowOverStart.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\FlowOverStart"; Filename: "{app}\FlowOverStart.exe"

[Tasks]
Name: "startupentry"; Description: "Run automatically at Windows startup"; GroupDescription: "Additional options:"; Flags: unchecked

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; \
  ValueType: string; ValueName: "FlowOverStart"; \
  ValueData: """{app}\FlowOverStart.exe"""; \
  Flags: uninsdeletevalue; Tasks: startupentry

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
