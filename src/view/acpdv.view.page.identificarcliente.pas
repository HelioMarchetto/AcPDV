unit acpdv.view.page.identificarcliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage;

type
  TPageIdentficarCliente = class(TForm)
    pnlIdentificacaoCliente: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    pnlCPFCNPJ: TPanel;
    Label1: TLabel;
    Shape2: TShape;
    edtCPFCNPJ: TEdit;
    pnlNome: TPanel;
    Label2: TLabel;
    Shape3: TShape;
    edtNome: TEdit;
    pnlButtom: TPanel;
    Panel5: TPanel;
    Shape4: TShape;
    Panel6: TPanel;
    Panel7: TPanel;
    Image1: TImage;
    Panel8: TPanel;
    Panel9: TPanel;
    Shape5: TShape;
    Panel10: TPanel;
    Panel11: TPanel;
    Image2: TImage;
    Panel12: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
  private
    FProc: TProc<string, string>;
  public
    class function New(AoWner: TComponent): TPageIdentficarCliente;
    function Embed(Value: TWinControl): TPageIdentficarCliente;
    function IdentificarCPF: TPageIdentficarCliente;
    function IdentificarClient(Value: TProc<String, String>): TPageIdentficarCliente;
  end;

var
  PageIdentficarCliente: TPageIdentficarCliente;

implementation

{$R *.dfm}

function TPageIdentficarCliente.Embed(Value: TWinControl): TPageIdentficarCliente;
begin
  Result := Self;
  Self.Parent := Value;
end;

function TPageIdentficarCliente.IdentificarClient(Value: System.SysUtils.TProc<string, string>):TPageIdentficarCliente;
begin
  Result := Self;
  FProc := Value;
end;

function TPageIdentficarCliente.IdentificarCPF: TPageIdentficarCliente;
begin
  Result := Self;
  pnlNome.Visible := False;
  pnlIdentificacaoCliente.Height := (pnlIdentificacaoCliente.Height-pnlNome.Height);
end;

class function TPageIdentficarCliente.New(AoWner: TComponent): TPageIdentficarCliente;
begin
  Result := Self.Create(AoWner);
end;

procedure TPageIdentficarCliente.Panel7Click(Sender: TObject);
begin
  if Assigned(FProc) then
    FProc(edtCPFCNPJ.Text, edtNome.Text);
  Self.Close;
end;

procedure TPageIdentficarCliente.FormResize(Sender: TObject);
var
  lHeigth, lWidth: Integer;
begin
  lHeigth := Round((Self.Height - pnlIdentificacaoCliente.Height)/2);
  lWidth := Round((Self.Width - pnlIdentificacaoCliente.Width)/2);

  pnlIdentificacaoCliente.Margins.Left := lWidth;
  pnlIdentificacaoCliente.Margins.Right := lWidth;
  pnlIdentificacaoCliente.Margins.Top := lHeigth;
  pnlIdentificacaoCliente.Margins.Bottom := lHeigth;
  pnlIdentificacaoCliente.Align := alClient;
end;

procedure TPageIdentficarCliente.FormShow(Sender: TObject);
begin
  edtCPFCNPJ.SetFocus;
end;

end.
