unit FormWebcamCapture;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, DH_Auxiliar_Tools,
  ShellApi;

type
  TfrmWebcamCapture = class(TForm)
    imgCapture: TImage;
    procedure imgCaptureDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmWebcamCapture: TfrmWebcamCapture;

implementation

{$R *.dfm}

procedure TfrmWebcamCapture.imgCaptureDblClick(Sender: TObject);
var
  saveDialog: TSaveDialog;
var
  aux: T_DH_Auxiliar_Tools;
  new_file: string;
begin
  aux := T_DH_Auxiliar_Tools.Create();
  aux.copy_file('screenshot.jpg', 'screenshot_backup.jpg');
  saveDialog := TSaveDialog.Create(self);
  saveDialog.Title := 'Save your text or word file';
  saveDialog.InitialDir := GetCurrentDir;
  saveDialog.Filter := 'JPEG file|*.jpg';
  saveDialog.DefaultExt := 'jpg';
  if saveDialog.Execute then
  begin
    new_file := saveDialog.FileName;
    aux.move_file('screenshot_backup.jpg', new_file);
  end;
  DeleteFile('screenshot_backup.jpg');
  saveDialog.Free();
  aux.Free();
  if (FileExists(new_file)) then
  begin
    ShowMessage('Screenshot taked');
    ShellExecute(0, nil, PChar(new_file), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    ShowMessage('Error taking screenshot');
  end;
end;

end.
