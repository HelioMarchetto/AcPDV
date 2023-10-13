unit acpdv.view.page.importarcliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Data.DB, Vcl.StdCtrls, Vcl.WinXCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TpageImportarCliente = class(TForm)
    pnlContainer: TPanel;
    pnlTop: TPanel;
    pnlInfo: TPanel;
    Panel1: TPanel;
    Image1: TImage;
    btnSair: TSpeedButton;
    pnlTitulo: TPanel;
    imgCliente: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Shape1: TShape;
    edtPesquisar: TSearchBox;
    procedure btnSairClick(Sender: TObject);
  private
    FProc : TProc<TObject>;
  public
    class function New(AOwner: TComponent) : TpageImportarCliente;
    function Titulo(Value: String): TpageImportarCliente;
    function Image(Value: String): TpageImportarCliente;
    function Click(Value: TProc<TObject>): TpageImportarCliente;
    function Embed(Value: TWinControl): TpageImportarCliente;
  end;

var
  pageImportarCliente: TpageImportarCliente;

implementation

{$R *.dfm}

{ TpageImportarCliente }

procedure TpageImportarCliente.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

function TpageImportarCliente.Click(
  Value: TProc<TObject>): TpageImportarCliente;
begin
  Result := Self;
  FProc := Value;
end;

function TpageImportarCliente.Embed(Value: TWinControl): TpageImportarCliente;
begin
  Result := Self;
  Self.Parent := Value;
end;

function TpageImportarCliente.Image(Value: String): TpageImportarCliente;
begin
  Result := Self;
  imgCliente.Picture.LoadFromFile(Value);
end;

class function TpageImportarCliente.New(
  AOwner: TComponent): TpageImportarCliente;
begin
  Result := Self.Create(AOwner);
end;

function TpageImportarCliente.Titulo(Value: String): TpageImportarCliente;
begin
  Result := Self;
  pnlTitulo.Caption := Value;
end;

end.
