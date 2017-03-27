#define MyAppName "Tiện ích văn phòng"
#define MyAppDirName  "Tien ich Van phong"
#define MyAppVersion ".2010.v1.2"
#define MyAppPublisher "Văn phòng UBND tỉnh Hà Giang"
#define MyAppURL "https://github.com/biencuong/van-phong"
#define MyAppExeName "HuongDan.doc"

[Setup]

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
;Source: "D:\G-DRIVER\VPUBND\Thi CNTT\Tien ich\vpub2010.dotm"; DestDir: "C:\Users\{sysuserinfoname}\AppData\Roaming\Microsoft\Word\STARTUP"; Flags: ignoreversion
Source: "D:\G-DRIVER\VPUBND\Thi CNTT\Tien ich\vpub2010.dotm"; DestDir: "{pf}\Microsoft Office\Office14\STARTUP"; Flags: ignoreversion
;Source: "D:\G-DRIVER\VPUBND\Thi CNTT\Tien ich\vpub2010.dotm"; DestDir: "{pf}\Microsoft Office 15\root\Office15\STARTUP"; Flags: ignoreversion
;Source: "D:\G-DRIVER\VPUBND\Thi CNTT\Tien ich\vpub2010.dotm"; DestDir: "{pf}\Microsoft Office\root\Office16\STARTUP"; Flags: ignoreversion
Source: "D:\G-DRIVER\VPUBND\Thi CNTT\Mau\*"; DestDir: "C:\";  Flags: ignoreversion recursesubdirs createallsubdirs


[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppName}}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: shellexec postinstall skipifsilent
