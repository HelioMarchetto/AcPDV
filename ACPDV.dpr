program ACPDV;
uses
  Vcl.Forms,
  acpdv.view.principal in 'src\view\acpdv.view.principal.pas' {pagePrincipal},
  acpdv.view.page.login in 'src\view\acpdv.view.page.login.pas' {PageLogin},
  acpdv.view.componente.Transparencia in 'src\view\Componentes\acpdv.view.componente.Transparencia.pas' {FundoTransparente},
  acpdv.view.page.pagamentos in 'src\view\acpdv.view.page.pagamentos.pas' {pagePagamentos},
  acpdv.view.page.pix in 'src\view\acpdv.view.page.pix.pas' {FramePix: TFrame};

{$R *.res}
begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TpagePrincipal, pagePrincipal);
  Application.Run;
end.
