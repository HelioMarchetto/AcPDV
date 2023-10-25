unit acpdv.view.abrircaixa;

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
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ExtCtrls, acpdv.model.caixa;

type
  TPageAbrirCaixa = class(TForm)
    pnlContainer: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape1: TShape;
    edtValorSuprimento: TEdit;
    Shape2: TShape;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
  private
    FProc: TProc<TCaixa>;
    procedure Responsive;
  public
    class function New(AOwner: TComponent): TPageAbrirCaixa;
    function Embed(Value: TWinControl): TPageAbrirCaixa;
    function Informacoes(Value: TProc<TCaixa>): TPageAbrirCaixa;
  end;

implementation

{$R *.dfm}
{ TForm1 }

function TPageAbrirCaixa.Embed(Value: TWinControl): TPageAbrirCaixa;
begin
  Result := Self;
  Self.Parent := Value;
end;

procedure TPageAbrirCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Self.Close;
end;

procedure TPageAbrirCaixa.FormResize(Sender: TObject);
begin
  Responsive;
end;

procedure TPageAbrirCaixa.FormShow(Sender: TObject);
begin
  Responsive;
end;

function TPageAbrirCaixa.Informacoes(Value: TProc<TCaixa>): TPageAbrirCaixa;
begin
  Result := Self;
  FProc := Value;
end;

class function TPageAbrirCaixa.New(AOwner: TComponent): TPageAbrirCaixa;
begin
  Result := Self.Create(AOwner);
end;

procedure TPageAbrirCaixa.Responsive;
begin
  pnlContainer.Margins.Left := Round((Self.Width - pnlContainer.Width) / 2);
  pnlContainer.Margins.Right := Round((Self.Width - pnlContainer.Width) / 2);
  pnlContainer.Margins.Top := Round((Self.Height - pnlContainer.Height) / 2);
  pnlContainer.Margins.Bottom := Round((Self.Height - pnlContainer.Height) / 2);
  pnlContainer.Align := alClient;
end;

procedure TPageAbrirCaixa.SpeedButton1Click(Sender: TObject);
var
  lCaixa: TCaixa;
  lTurno: TTurno;
  lData: TDateTime;
begin
  lData := Now;
  lCaixa := TCaixa.New;
  try
    lCaixa.Id := 1;
    lCaixa.Caixa := 1;
    lCaixa.Turno := lTurno.RetornaTurno(lData);
    lCaixa.Aberto := True;
    lCaixa.DataHoraAbertura := lData;
    lCaixa.SaldoInicial := StrToCurr(StringReplace(edtValorSuprimento.Text, 'R$ ', '', [rfReplaceAll, rfIgnoreCase]));
    FProc(lCaixa);
  finally
    lCaixa.DisposeOf;
    Self.Close;
  end;
end;

end.
