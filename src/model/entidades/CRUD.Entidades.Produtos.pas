unit CRUD.Entidades.Produtos;

interface

uses
  CRUD.Interfaces.Produtos,
  CRUD.Interfaces.Conexao, 
  CRUD.Interfaces.IdNome,
  Data.DB;

type
  TProdutos = class(TInterfacedObject, iProdutos)
  private
    FPesquisa : iPesquisaQuery;
    FIdNome : iIdNome<iProdutos>;
    FQuery: iQuery;
    FPreco: double;
    FDataCadastro: TdateTime;
    FDescricao: string;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iProdutos;
    function Preco(aValue: double): iProdutos; overload;
    function Preco: double; overload;
    function DataCadastro(aValue: TdateTime): iProdutos; overload;
    function DataCadastro: TdateTime; overload;
    function Descricao(aValue: string): iProdutos; overload;
    function Descricao: string; overload;
    function FDQuery: iQuery;
    
    function Pesquisa : iPesquisaQuery;
    function IdNome : iIdNome<iProdutos>; 
    
  end;

implementation

uses
  CRUD.Controller.FactoryQuery, 
  System.SysUtils, CRUD.Entidades.IdNome, CRUD.Entidades.PesquisaQuery;


constructor TProdutos.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
  FIdNome := TIdNome<iProdutos>.New(self);
  FPesquisa := TPesquisaQuery.New(FQuery);
end;

function TProdutos.DataCadastro: TdateTime;
begin
  result := FDataCadastro;
end;

function TProdutos.DataCadastro(aValue: TdateTime): iProdutos;
begin
  result := self;
  FDataCadastro := aValue;
end;

function TProdutos.Descricao: string;
begin
  result := FDescricao;
end;

destructor TProdutos.Destroy;
begin
  inherited;

end;

function TProdutos.FDQuery: iQuery;
begin
  result := FQuery;
end;

function TProdutos.Descricao(aValue: string): iProdutos;
begin
  result := self;
  FDescricao := aValue;
end;

function TProdutos.IdNome: iIdNome<iProdutos>;
begin
  result := FIdNome;
end;

class function TProdutos.New: iProdutos;
begin
  result := self.Create;
end;

function TProdutos.Pesquisa: iPesquisaQuery;
begin
  result := FPesquisa;
end;

function TProdutos.Preco: double;
begin
  result := FPreco;
end;


function TProdutos.Preco(aValue: double): iProdutos;
begin
  result := self;
  FPreco := aValue;
end;

end.
