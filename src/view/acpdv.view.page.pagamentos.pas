unit acpdv.view.page.pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TpagePagamentos = class(TForm)
    pnlContainer: TPanel;
    pnlFormasPagamento: TPanel;
    pnlInformacoes: TPanel;
    Panel1: TPanel;
    pnlBotao: TPanel;
    pnlInfoVenda: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Panel6: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Panel7: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    edtDesconto: TEdit;
    Panel8: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edtAcrescimo: TEdit;
    Panel9: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Shape1: TShape;
    Panel10: TPanel;
    Label10: TLabel;
    Edit1: TEdit;
    Panel11: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Panel12: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Panel13: TPanel;
    Panel14: TPanel;
    Shape2: TShape;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    pnlBotoesPagamentos: TPanel;
    Panel19: TPanel;
    ShapeDinheiro: TShape;
    Panel20: TPanel;
    pnlDinheiro: TPanel;
    Panel22: TPanel;
    Image2: TImage;
    Panel23: TPanel;
    ShapePix: TShape;
    Panel24: TPanel;
    pnlPix: TPanel;
    Image3: TImage;
    Panel26: TPanel;
    Panel27: TPanel;
    ShapeCartao: TShape;
    Panel28: TPanel;
    pnlCartao: TPanel;
    Image4: TImage;
    Panel30: TPanel;
    pnlContainerPg: TPanel;
    Panel32: TPanel;
    Shape6: TShape;
    procedure pnlPixClick(Sender: TObject);
    procedure pnlCartaoClick(Sender: TObject);
    procedure pnlDinheiroClick(Sender: TObject);
  private
    { Private declarations}
    procedure SetClick (Shape: TShape; Panel: TPanel);
  public
    { Public declarations }
  end;

var
  pagePagamentos: TpagePagamentos;

implementation

{$R *.dfm}

uses acpdv.view.page.pix, acpdv.view.page.dinheiro, acpdv.view.page.cartao;

procedure TpagePagamentos.pnlCartaoClick(Sender: TObject);
begin
  TFrameCartao.New(Self).Alinhamento(alClient).Embed(pnlContainerPg);
  SetClick(ShapeCartao, pnlBotoesPagamentos);
end;

procedure TpagePagamentos.pnlDinheiroClick(Sender: TObject);
var
  LFrame: TFrameDinheiro;
begin
  LFrame := TFrameDinheiro.Create(nil);
  LFrame.Align := alClient;
  LFrame.Parent := pnlContainerPg;
  LFrame.edtRecebido.SetFocus;

  SetClick(ShapeDinheiro, pnlBotoesPagamentos);
end;

procedure TpagePagamentos.pnlPixClick(Sender: TObject);
var
  LFrame : TFramePix;
begin
  LFrame := TFramePix.Create(nil);
  LFrame.Align := alClient;
  LFrame.Parent := pnlContainerPg;

  SetClick(ShapePix, pnlBotoesPagamentos);
end;

procedure TpagePagamentos.SetClick(Shape: TShape; Panel: TPanel);
begin
  ShapeCartao.Pen.Style := psClear;
  ShapePix.Pen.Style := psClear;
  ShapeDinheiro.Pen.Style := psClear;

  Shape.Pen.Style := psSolid;

  Panel.Visible := False;
  Panel.Visible := True;
end;

end.
