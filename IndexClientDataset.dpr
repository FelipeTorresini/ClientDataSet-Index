program IndexClientDataset;

uses
  Vcl.Forms,
  ufrm in 'ufrm.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
