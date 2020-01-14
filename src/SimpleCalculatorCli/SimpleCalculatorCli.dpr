program SimpleCalculatorCli;

uses
  System.StartUpCopy,
  FMX.MobilePreview,
  FMX.Forms,
  FormClientUnit1 in 'FormClientUnit1.pas' {Form26},
  ClientClassesUnit1 in 'ClientClassesUnit1.pas',
  ClientModuleUnit1 in 'ClientModuleUnit1.pas' {ClientModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TClientModule1, ClientModule1);
  Application.Run;
end.
