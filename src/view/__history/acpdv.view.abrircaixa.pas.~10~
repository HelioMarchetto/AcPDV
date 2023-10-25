unit acpdv.view.abrircaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TpageAbrirCaixa = class(TForm)
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
  private
    procedure Responsive;
  public
    class function New(AOwner : TComponent): TpageAbrirCaixa;
    function Embed(Value: TWinControl): TpageAbrirCaixa;
  end;

var
  pageAbrirCaixa: TpageAbrirCaixa;

implementation

{$R *.dfm}

{ TpageAbrirCaixa }

function TpageAbrirCaixa.Embed(Value: TWinControl): TpageAbrirCaixa;
begin
  Result := Self;
  Self.Parent := Value;
end;

procedure TpageAbrirCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Self.Close;
end;

procedure TpageAbrirCaixa.FormResize(Sender: TObject);
begin
  Responsive;
end;

procedure TpageAbrirCaixa.FormShow(Sender: TObject);
begin
  Responsive;
end;

class function TpageAbrirCaixa.New(AOwner: TComponent): TpageAbrirCaixa;
begin
  Result := Self.Create(AOwner);
end;

procedure TpageAbrirCaixa.Responsive;
begin
  pnlContainer.Margins.Left := Round((Self.Width - pnlContainer.Width) / 2);
  pnlContainer.Margins.Right := Round((Self.Width - pnlContainer.Width) / 2);
  pnlContainer.Margins.Top := Round((Self.Height - pnlContainer.Height) / 2);
  pnlContainer.Margins.Bottom := Round((Self.Height - pnlContainer.Height) / 2);
  pnlContainer.Align := alClient;
end;

end.
