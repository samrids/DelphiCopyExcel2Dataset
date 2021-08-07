program demoDelphiCopyExcelToDataset;

uses
  Vcl.Forms,
  fMain in 'fMain.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Copper');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
