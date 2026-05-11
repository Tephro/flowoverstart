[Setup]
AppName=My Hotkey Tool
AppVersion=1.0
DefaultDirName={autopf}\MyHotkeyTool
DefaultGroupName=MyHotkeyTool
OutputBaseFilename=MyHotkeyToolInstaller
Compression=lzma
SolidCompression=yes

[Files]
Source: "MyTool.exe"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\My Hotkey Tool"; Filename: "{app}\MyTool.exe"

[Tasks]
Name: "startupentry"; Description: "Run automatically at Windows startup"; GroupDescription: "Additional options:"; Flags: unchecked

[Registry]
Root: HKCU; Subkey: "Software\Microsoft\Windows\CurrentVersion\Run"; \
  ValueType: string; ValueName: "MyHotkeyTool"; \
  ValueData: """{app}\MyTool.exe"""; \
  Flags: uninsdeletevalue; Tasks: startupentry

[UninstallDelete]
Type: filesandordirs; Name: "{app}"
