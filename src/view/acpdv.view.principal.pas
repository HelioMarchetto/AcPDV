unit acpdv.view.principal;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, acpdv.view.page.login, Vcl.WinXCtrls;
type
  TpagePrincipal = class(TForm)
    pnlContainer: TPanel;
    pnlTitle: TPanel;
    pnlBottom: TPanel;
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
    Label2: TLabel;
    pnlSubTotal: TPanel;
    Label3: TLabel;
    Shape8: TShape;
    pnledtSubTotal: TPanel;
    lblSubTotal: TLabel;
    pnlQuantidade: TPanel;
    lblQuantidade: TLabel;
    Shape9: TShape;
    pnledtQuantidade: TPanel;
    edtQuantidade: TEdit;
    pnlPreco: TPanel;
    Label6: TLabel;
    Shape10: TShape;
    pnledtPreco: TPanel;
    lblPreco: TLabel;
    pnlProduto: TPanel;
    Label4: TLabel;
    Shape11: TShape;
    pnledtProduto: TPanel;
    edtProduto: TEdit;
    pnlImgProduto: TPanel;
    imgProduto: TImage;
    pnlMaster: TPanel;
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
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMaisFuncoesClick(Sender: TObject);
  private
    FLogin: TPageLogin;
    procedure MontarBotoes;
    procedure SplitViewAction(Value: TSplitView);
    { Private declarations }
  public
    { Public declarations }
  end;
var
  pagePrincipal: TpagePrincipal;
implementation
{$R *.dfm}

uses acpdv.view.page.pagamentos;
procedure TpagePrincipal.btnMaisFuncoesClick(Sender: TObject);
begin
  SplitViewAction(SplitViewFuncoes);
end;

procedure TpagePrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FLogin.Free;
end;

procedure TpagePrincipal.FormCreate(Sender: TObject);
begin
  MontarBotoes;
end;

procedure TpagePrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  lPagamentos : TpagePagamentos;
begin
  case Key of
    VK_ESCAPE: ShowMessage('Cancelar Opera��o');
    VK_F4: ShowMessage('Consultar Pre�o');
    VK_F2: ShowMessage('Abrir Caixa');
    VK_F6: ShowMessage('Cancelar Venda');
    VK_F5: ShowMessage('Cancelar Item');
    VK_F12: btnMaisFuncoesClick(Sender);
    VK_F7: begin
      lPagamentos := TpagePagamentos.Create(nil);
      lPagamentos.Parent := pnlPag;
      lPagamentos.Show;
      SplitViewAction(SplitViewPagamentos);
    end;
  end;
end;

procedure TpagePrincipal.FormShow(Sender: TObject);
begin
//  FLogin := TPageLogin.Create(nil);
//  FLogin.Parent := pnlMaster;
//  FLogin.Show;
end;

procedure TpagePrincipal.MontarBotoes;
begin
  btnCancelarOp.Caption := 'Cancelar Opera��o ' + ''#13'' + ' (ESC)';
  btnConsultarPreco.Caption := 'Consultar Pre�o ' + ''#13'' + ' (F4)';
  btnAbrirCaixa.Caption := 'Abrir Caixa ' + ''#13'' + ' (F2)';
  btnCancelarVenda.Caption := 'Cancelar Venda ' + ''#13'' + ' (F6)';
  btnCancelarItem.Caption := 'Cancelar Item ' + ''#13'' + ' (F5)';
  btnMaisFuncoes.Caption := 'Mais Fun��es ' + ''#13'' + ' (F12)';
end;

procedure TpagePrincipal.SplitViewAction(Value: TSplitView);
begin
  Value.Opened := not Value.Opened;
end;

end.
