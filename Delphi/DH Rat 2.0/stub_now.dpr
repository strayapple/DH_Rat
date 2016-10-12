program stub_now;

uses
  Vcl.Forms,
  stub in 'stub.pas' {FormHome};

{$R *.res}

begin
  Application.Initialize;
  Application.ShowMainForm := False;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormHome, FormHome);
  Application.Run;
end.
