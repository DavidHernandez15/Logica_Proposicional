program Proposiciones;

uses
  Vcl.Forms,
  uLogicaProposicional in 'uLogicaProposicional.pas' {fProposiciones};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfProposiciones, fProposiciones);
  Application.Run;
end.
