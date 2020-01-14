unit FormClientUnit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.StdCtrls;

type
  TForm26 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    EditA: TEdit;
    EditB: TEdit;
    ButtonAdd: TButton;
    ButtonSub: TButton;
    procedure Button1Click(Sender: TObject);
    procedure ButtonAddClick(Sender: TObject);
    procedure ButtonSubClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form26: TForm26;

implementation

{$R *.fmx}

uses ClientModuleUnit1;

procedure TForm26.Button1Click(Sender: TObject);
begin
  Edit1.Text := ClientModule1.ServerMethods1Client.ReverseString(Edit1.Text);
end;

procedure TForm26.ButtonAddClick(Sender: TObject);
var a,b,c: integer;
begin
  a := EditA.Text.ToInteger;
  b := EditB.Text.ToInteger;
  c := ClientModule1.ServerMethods1Client.Add(a, b);
  ShowMessage(a.ToString + ' + ' + b.ToString + ' = ' + c.ToString);
end;

procedure TForm26.ButtonSubClick(Sender: TObject);
var a,b,c: integer;
begin
  a := EditA.Text.ToInteger;
  b := EditB.Text.ToInteger;
  c := ClientModule1.ServerMethods1Client.Subtract(a, b);
  ShowMessage(a.ToString + ' - ' + b.ToString + ' = ' + c.ToString);
end;

end.
