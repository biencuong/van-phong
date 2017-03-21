#define MyAppName "Tiện ích văn phòng"
#define MyAppDirName  "Tien ich van phong"
#define MyAppVersion " v1.2"
#define MyAppPublisher "Văn phòng UBND tỉnh Hà Giang"
#define MyAppURL "http://hagiang.org/"
#define MyAppExeName "HuongDan.doc"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{5A7922F1-0CB8-426D-B3EC-991C8C513C1C}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppDirName}
DefaultGroupName={#MyAppName}
LicenseFile=D:\G-DRIVER\VPUBND\Thi CNTT\Mau\MauVB\Giayphep.txt
OutputDir=D:\G-DRIVER\VPUBND\Thi CNTT\Tien ich\bo cai
OutputBaseFilename=Tien_ich_Van_phong{#MyAppVersion}
SetupIconFile=D:\G-DRIVER\VPUBND\Thi CNTT\Tien ich\favicon.ico
Compression=lzma/max
SolidCompression=yes

[Languages]
Name: "codau"; MessagesFile: "compiler:Languages\codau.isl"

[Files]
Source: "D:\G-DRIVER\VPUBND\Thi CNTT\Mau\MauVB\HuongDan.doc"; DestDir: "{app}\"; Flags: ignoreversion
Source: "D:\G-DRIVER\VPUBND\Thi CNTT\Tien ich\cuong20140123PM.dotm"; DestDir: "C:\Users\{sysuserinfoname}\AppData\Roaming\Microsoft\Word\STARTUP"; Flags: ignoreversion
Source: "D:\G-DRIVER\VPUBND\Thi CNTT\Mau\*"; DestDir: "C:\";  Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent

