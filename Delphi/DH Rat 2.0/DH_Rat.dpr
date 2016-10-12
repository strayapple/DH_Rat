program DH_Rat;

uses
  Vcl.Forms,
  rat in 'rat.pas' {FormHome},
  Vcl.Themes,
  Vcl.Styles,
  FormDesktopCapture in 'FormDesktopCapture.pas' {frmDesktopCapture},
  FormWebcamCapture in 'FormWebcamCapture.pas' {frmWebcamCapture};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TFormHome, FormHome);
  Application.CreateForm(TfrmDesktopCapture, frmDesktopCapture);
  Application.CreateForm(TfrmWebcamCapture, frmWebcamCapture);
  Application.Run;
end.
