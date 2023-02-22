unit Financeiro.View.Principal;

interface

uses
  Winapi.Windows,
  Vcl.Menus,
  System.Classes,
  Vcl.Forms;

type
  TFrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    ipodePagamentos1: TMenuItem;
    LookUpPadro1: TMenuItem;
    Movimentao1: TMenuItem;
    Orcamentos1: TMenuItem;
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ipodePagamentos1Click(Sender: TObject);
    procedure LookUpPadro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  Financeiro.View.Clientes,
  Financeiro.View.Produtos,
  Financeiro.View.TipoPagamentos,
  Financeiro.View.LookUpPadrao;

{$R *.dfm}

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
var
  FrmCadClientes: TFrmCadClientes;
begin
  FrmCadClientes := TFrmCadClientes.Create(nil);
  try
    FrmCadClientes.ShowModal;
  finally
    FrmCadClientes.Free;
  end;
end;

procedure TFrmPrincipal.ipodePagamentos1Click(Sender: TObject);
var
FrmCadTipoPgto : TFrmCadTipoPgto;
begin
  FrmCadTipoPgto := TFrmCadTipoPgto.Create(nil);
  try
    FrmCadTipoPgto.ShowModal;
  finally
    FrmCadTipoPgto.Free;
  end;
end;

procedure TFrmPrincipal.LookUpPadro1Click(Sender: TObject);
var
  FrmPesquisa : TFrmPesquisa;
begin
  FrmPesquisa := TFrmPesquisa.Create(nil);
  try
   FrmPesquisa.grid(' SELECT PRODUTOS.ID, PRODUTOS.NOME FROM PRODUTOS ');
   FrmPesquisa.ShowModal;
  finally
   FrmPesquisa.Free;
  end;
end;

procedure TFrmPrincipal.Produtos1Click(Sender: TObject);
var
  FrmCadProdutos: TFrmCadProdutos;
begin
  FrmCadProdutos := TFrmCadProdutos.Create(nil);
  try
    FrmCadProdutos.ShowModal;
  finally
    FrmCadProdutos.Free;
  end;
end;

end.
