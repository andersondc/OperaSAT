program OperaSAT;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FPrincipal},
  DadosVenda in 'DadosVenda.pas' {FDadosVenda},
  ConfigImp in 'ConfigImp.pas' {FConfigImp};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFDadosVenda, FDadosVenda);
  Application.CreateForm(TFConfigImp, FConfigImp);
  Application.Run;
end.
