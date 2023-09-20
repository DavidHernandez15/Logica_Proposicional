unit uLogicaProposicional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TfProposiciones = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bAceptar: TButton;
    Cancelar: TButton;
    Panel3: TPanel;
    pgAvanzado: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    cbVarI: TComboBox;
    cbOperacion: TComboBox;
    cbVarII: TComboBox;
    mResultado: TMemo;
    procedure bAceptarClick(Sender: TObject);
    procedure CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure caso1(var1, var2, operacion : string);
    procedure caso2(var1, var2, operacion : string);
    procedure caso3(var1, var2, operacion : string);
    procedure caso4(var1, var2, operacion : string);
    procedure caso5(var1, var2, operacion : string);

  end;

var
  fProposiciones: TfProposiciones;

implementation

{$R *.dfm}

procedure TfProposiciones.bAceptarClick(Sender: TObject);
var
  variable1, variable2, operacion :string;
begin
  variable1:=cbVarI.Text;
  variable2:=cbVarII.Text;
  operacion:=cbOperacion.Text;

  if (CompareStr(operacion,'NO')=0) then
  begin
    operacion:='¬';
    caso1(variable1,variable2,operacion);
  end;

  if (CompareStr(operacion,'Y')=0) then
  begin
    operacion:='^';
    caso2(variable1,variable2,operacion);
  end;

  if (CompareStr(operacion,'O')=0) then
  begin
    operacion:='v';
    caso3(variable1,variable2,operacion);
  end;

  if (CompareStr(operacion,'ENTONCES')=0) then
  begin
    operacion:='->';
    caso4(variable1,variable2,operacion);
  end;

  if (CompareStr(operacion,'SI SOLO SI')=0) then
  begin
    operacion:='<->';
    caso5(variable1,variable2,operacion);
  end;

end;

procedure TfProposiciones.CancelarClick(Sender: TObject);
begin
  mResultado.Lines.Clear;
  mResultado.Left:=350;
end;

procedure TfProposiciones.caso1(var1, var2, operacion : string);
begin
     mResultado.Left:=86;
     mResultado.Lines.Add(var1+' '+var2+'        '+var1+' '+operacion+' '+var2);
     mResultado.Lines.Add('----      ---------');
     mResultado.Lines.Add('1  1            0');
     mResultado.Lines.Add('1  0            1');
     mResultado.Lines.Add('0  1            0');
     mResultado.Lines.Add('0  0            1');
end;

procedure TfProposiciones.caso2(var1, var2, operacion : string);
begin
     mResultado.Left:=86;
     mResultado.Lines.Add(var1+' '+var2+'        '+var1+' '+operacion+' '+var2);
     mResultado.Lines.Add('----      ---------');
     mResultado.Lines.Add('1  1            1');
     mResultado.Lines.Add('1  0            0');
     mResultado.Lines.Add('0  1            0');
     mResultado.Lines.Add('0  0            0');
end;


procedure TfProposiciones.caso3(var1, var2, operacion : string);
begin
     mResultado.Left:=86;
     mResultado.Lines.Add(var1+' '+var2+'        '+var1+' '+operacion+' '+var2);
     mResultado.Lines.Add('----      ---------');
     mResultado.Lines.Add('1  1            1');
     mResultado.Lines.Add('1  0            1');
     mResultado.Lines.Add('0  1            1');
     mResultado.Lines.Add('0  0            0');
end;

procedure TfProposiciones.caso4(var1, var2, operacion : string);
begin
     mResultado.Left:=86;
     mResultado.Lines.Add(var1+' '+var2+'        '+var1+' '+operacion+' '+var2);
     mResultado.Lines.Add('----      ---------');
     mResultado.Lines.Add('1  1            1');
     mResultado.Lines.Add('1  0            0');
     mResultado.Lines.Add('0  1            1');
     mResultado.Lines.Add('0  0            1');
end;

procedure TfProposiciones.caso5(var1, var2, operacion : string);
begin
     mResultado.Left:=86;
     mResultado.Lines.Add(var1+' '+var2+'        '+var1+' '+operacion+' '+var2);
     mResultado.Lines.Add('----      ---------');
     mResultado.Lines.Add('1  1            1');
     mResultado.Lines.Add('1  0            0');
     mResultado.Lines.Add('0  1            0');
     mResultado.Lines.Add('0  0            1');
end;

end.
