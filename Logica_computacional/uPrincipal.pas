unit uPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cbVariableI: TComboBox;
    cbOperacion: TComboBox;
    cbVariableII: TComboBox;
    bVerificar: TButton;
    Memo1: TMemo;
    bVolver: TButton;
    procedure bVerificarClick(Sender: TObject);
    procedure bVolverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure caso1(var1, var2, operador : string);

  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.caso1(var1, var2, operador:string);
begin
     var1:=cbVariableI.Text;
     var2:=cbVariableII.Text;
     operador:=cbOperacion.Text;
     Memo1.Left:=40;
     Memo1.Lines.Add(var1+' '+var2+'        '+var1+' '+operador+' '+var2);
     Memo1.Lines.Add('------        ---------');
     Memo1.Lines.Add('1  1           1');
     Memo1.Lines.Add('1  0           1');
     Memo1.Lines.Add('0  1           1');
     Memo1.Lines.Add('0  0           0');
end;

procedure TForm1.bVerificarClick(Sender: TObject);
var
  variable1, variable2, operacion :string;
begin
  variable1:=cbVariableI.Text;
  variable2:=cbVariableII.Text;
  operacion:=cbOperacion.Text;
  if ((CompareStr(variable1,'P')=0) and (CompareStr(variable2,'Q')=0) and (CompareStr(operacion,'O')=0)) then
      caso1(variable1,variable2,operacion);
end;

procedure TForm1.bVolverClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Left:=296;
end;

end.
