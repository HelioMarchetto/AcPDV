unit acpdv.view.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.Imaging.jpeg,
  acpdv.view.page.login,
  acpdv.model.dados,
  Vcl.WinXCtrls,
  acpdv.view.page.pagamento,
  acpdv.view.page.identificarcliente,
  acpdv.view.page.importarcliente,
  acpdv.view.abrircaixa,
  Vcl.Imaging.pngimage,
  acpdv.model.caixa;

type
  Tpageprincipal = class(TForm)
    pnlContainer: TPanel;
    pnlTitle: TPanel;
    pnlButton: TPanel;
    pnlMain: TPanel;
    pnlOperacoes: TPanel;
    pnlGrid: TPanel;
    pnlCancelarOp: TPanel;
    Shape1: TShape;
    btnCancelarOp: TSpeedButton;
    pnlConsultarPreco: TPanel;
    Shape2: TShape;
    btnConsultarPreco: TSpeedButton;
    pnlAbrirCaixa: TPanel;
    Shape3: TShape;
    btnAbrirCaixa: TSpeedButton;
    pnlCancelarVenda: TPanel;
    Shape4: TShape;
    btnCancelarVenda: TSpeedButton;
    pnlCancelarItem: TPanel;
    Shape5: TShape;
    btnCancelarItem: TSpeedButton;
    pnlMaisFuncoes: TPanel;
    Shape6: TShape;
    btnMaisFuncoes: TSpeedButton;
    gridProdutos: TDBGrid;
    pnlTotalCompra: TPanel;
    Label1: TLabel;
    Shape7: TShape;
    pnledtTotalCompra: TPanel;
    lblTotalCompra: TLabel;
    pnlSubTotal: TPanel;
    Label2: TLabel;
    pnlEdtSubTotal: TPanel;
    Shape8: TShape;
    lblSubTotal: TLabel;
    pnlQuantidade: TPanel;
    Label3: TLabel;
    pnlEdtQuantidade: TPanel;
    Shape9: TShape;
    edtQuantidade: TEdit;
    pnlPreco: TPanel;
    Label4: TLabel;
    pnlEdtPreco: TPanel;
    Shape10: TShape;
    lblPreco: TLabel;
    pnlProduto: TPanel;
    Label5: TLabel;
    pnlEdtProduto: TPanel;
    Shape11: TShape;
    edtProduto: TEdit;
    pnlImgProduto: TPanel;
    ImageProduto: TImage;
    pnlMaster: TPanel;
    dsItens: TDataSource;
    SplitViewFuncoes: TSplitView;
    Panel1: TPanel;
    Panel2: TPanel;
    Shape12: TShape;
    Panel3: TPanel;
    Shape13: TShape;
    Panel4: TPanel;
    Shape14: TShape;
    Panel5: TPanel;
    Shape15: TShape;
    Panel6: TPanel;
    Shape16: TShape;
    Panel7: TPanel;
    Shape17: TShape;
    SplitViewPagamentos: TSplitView;
    pnlPag: TPanel;
    Panel8: TPanel;
    Shape18: TShape;
    pnlIdentificaCliente: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMaisFuncoesClick(Sender: TObject);
  private
    FLogin: TPageLogin;
    FF6: Integer;
    FCaixa: TCaixa;
    procedure MontarBotoes;

    procedure FixarForm;

    procedure SplitViewAction(Value: TSplitView);
    procedure AjustarCampos;
    procedure VerificaCaixaFechadoAberto;
    procedure InformacoesOperador;
  public

  end;

var
  pageprincipal: Tpageprincipal;

implementation

{$R *.dfm}

procedure Tpageprincipal.AjustarCampos;
begin
  edtProduto.Text := '';
  lblPreco.Caption := FormatCurr('"R$ ",0.00', 0);
  edtQuantidade.Text := FormatFloat(',0.000', 0);
  lblSubTotal.Caption := FormatCurr('"R$ ",0.00', 0);
  lblTotalCompra.Caption := FormatCurr('"R$ ",0.00', 0);
  dmDados.cdsItens.Active := false;
  pnlTitle.SetFocus;
end;

procedure Tpageprincipal.btnMaisFuncoesClick(Sender: TObject);
begin
  SplitViewAction(SplitViewFuncoes);
end;

procedure Tpageprincipal.FixarForm;
begin
  Self.WindowState := TWindowState.wsNormal;
  Self.Position := poScreenCenter;
  Self.Constraints.MaxHeight := Self.ClientHeight;
  Self.Constraints.MinHeight := Self.ClientHeight;
  Self.Constraints.MaxWidth := Self.ClientWidth;
  Self.Constraints.MinWidth := Self.ClientWidth;
end;

procedure Tpageprincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FCaixa.DisposeOf;
end;

procedure Tpageprincipal.FormCreate(Sender: TObject);
begin
  FixarForm;
  MontarBotoes;
end;

procedure Tpageprincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  lPagamentos: TPagePagamentos;
  lKeyEvent: TKeyEvent;
  I: Integer;
begin

  for I := Pred(pnlMaster.ControlCount) downto 0 do
  begin
    if (pnlMaster.Controls[I] is TForm) then
    begin
      if not(Shift = [ssCtrl]) then
      begin
        if TForm(pnlMaster.Controls[I]).KeyPreview then
          lKeyEvent := TForm(pnlMaster.Controls[I]).OnKeyDown;

        if Assigned(lKeyEvent) then
          lKeyEvent(Sender, Key, Shift);

        exit;
      end;
    end;
  end;

  case Key of
    VK_ESCAPE:
      Self.Close;
    VK_F4:
      ShowMessage('Consultar Preço');
    VK_F2: begin
        TPageAbrirCaixa.New(Self)
          .Embed(pnlMaster)
          .Informacoes(procedure (Value: TCaixa)
          begin
            FCaixa.Id := Value.Id;
            FCaixa.Caixa := Value.Caixa;
            FCaixa.Turno := Value.Turno;
            FCaixa.Aberto := Value.Aberto;
            FCaixa.DataHoraAbertura := Value.DataHoraAbertura;
            FCaixa.SaldoInicial := VAlue.SaldoInicial;
            VerificaCaixaFechadoAberto;
          end).Show;
    end;
    VK_F6:
      ShowMessage('Cancelar Venda');
    VK_F5:
      ShowMessage('Cancelar Item');
    VK_F12:
      btnMaisFuncoesClick(Sender);
    VK_F7:
      begin
        lPagamentos := TPagePagamentos.Create(nil);
        lPagamentos.Parent := pnlPag;
        lPagamentos.Show;
        SplitViewAction(SplitViewPagamentos);
      end;
    VK_F1:
      begin
        TPageImportarCliente.New(Self).Embed(pnlMaster).Show;
      end;
    VK_F9:
      begin
        TPageIdentificarCliente.New(Self).IdentificaCPF.Embed(pnlMaster)
          .identificarcliente(
          procedure(aCPF, aCliente: String)
          begin
            if not aCliente.IsEmpty then
              aCliente := 'Cliente: ' + aCliente;
            if not aCPF.IsEmpty then
              aCPF := 'CPF: ' + aCPF;

            if ((not aCliente.IsEmpty) or (not aCPF.IsEmpty)) then
            begin
              pnlIdentificaCliente.Visible := True;
              pnlIdentificaCliente.Caption := aCliente + ' ' + aCPF;
            end;
          end).Show;
      end;
  end;
end;

procedure Tpageprincipal.FormShow(Sender: TObject);
begin
  TPageLogin.New(Self).Embed(pnlMaster).Informacao(
    procedure(Value: String)
    begin
      if not Assigned(FCaixa) then
        FCaixa := TCaixa.New;

      FCaixa.Operador := Value;

      VerificaCaixaFechadoAberto;
    end).Show;
end;

procedure Tpageprincipal.InformacoesOperador;
var
  lCaption, lOperador: String;
begin
  lOperador := 'Caixa ' + FCaixa.Caixa.ToString + ' | Operador: '
    + FCaixa.Operador + ' | Turno: ' + FCaixa.Turno.ToString;

  lCaption := StringOfChar(' ', (255 - (Length(Self.Caption) + Length(lOperador))));
  Self.Caption := Self.Caption + lCaption + lOperador;
end;

procedure Tpageprincipal.MontarBotoes;
begin
  btnCancelarOp.Caption := 'Cancelar Operação ' + ''#13'' + ' (F10)';
  btnConsultarPreco.Caption := 'Consultar Preço' + ''#13'' + '(F4)';
  btnAbrirCaixa.Caption := 'Abrir Caixa' + ''#13'' + '(F2)';
  btnCancelarVenda.Caption := 'Cancelar Venda' + ''#13'' + '(F6)';
  btnCancelarItem.Caption := 'Cancelar Item' + ''#13'' + '(F5)';
  btnMaisFuncoes.Caption := 'Mais Funções' + ''#13'' + '(F12)';
end;

procedure Tpageprincipal.SplitViewAction(Value: TSplitView);
begin
  Value.Opened := not Value.Opened;
end;

procedure Tpageprincipal.VerificaCaixaFechadoAberto;
begin
  if not FCaixa.Aberto then
  begin
    pnlTitle.Caption := 'Caixa Fechado';
    AjustarCampos;
    Exit;
  end;
  pnlTitle.Caption := 'Caixa Aberto';

  InformacoesOperador;

  AjustarCampos;
end;

end.
