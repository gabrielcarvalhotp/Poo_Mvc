unit CRUD.Entidades.Clientes;

interface

uses
  Data.DB,
  CRUD.Interfaces.Clientes, 
  Crud.Interfaces.Conexao, CRUD.Interfaces.IdNome;

type

  TClientes = class(TInterfacedObject, iClientes)
  private
    FPesquisa : iPesquisaQuery;
    FIdNome : IIdNome<iClientes>;
    FQuery: iQuery;
    FEmail: string;
    FDataCadastro: TDateTime;
    FEndereco: string;
    FTelefone: string;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iClientes;
    function Endereco(aValue: string): iClientes; overload;
    function Endereco: string; overload;
    function Telefone(aValue: string): iClientes; overload;
    function Telefone: string; overload;
    function Email(aValue: string): iClientes; overload;
    function Email: string; overload;
    function DataCadastro(aValue: TDateTime): iClientes; overload;
    function DataCadastro: TDateTime; overload;
    function FDQuery: iQuery;
    
    function Pesquisa : iPesquisaQuery;
    function IdNome : iIdNome<iClientes>;
  end;

implementation

uses
  CRUD.Controller.FactoryQuery, System.SysUtils, CRUD.Entidades.IdNome, 
  CRUD.Entidades.PesquisaQuery;

{ TClientes }

constructor TClientes.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
  FIdNome := TIdNome<iClientes>.New(self);
  FPesquisa := TPesquisaQuery.New(FQuery);
end;

destructor TClientes.Destroy;
begin
  inherited;
end;

class function TClientes.New: iClientes;
begin
  result := self.Create;
end;


function TClientes.Pesquisa: iPesquisaQuery;
begin
  result := FPesquisa;
end;


function TClientes.DataCadastro(aValue: TDateTime): iClientes;
begin
  result := self;
  FDataCadastro := aValue
end;

function TClientes.DataCadastro: TDateTime;
begin
  result := FDataCadastro;
end;

function TClientes.Email: string;
begin
  result := FEmail;
end;

function TClientes.Email(aValue: string): iClientes;
begin
  result := self;
  FEmail := aValue;
end;

function TClientes.Endereco: string;
begin
  result := FEndereco;
end;

function TClientes.FDQuery: iQuery;
begin
  result := FQuery;
end;

function TClientes.IdNome: iIdNome<iClientes>;
begin
  result := FIdNome;
end;

function TClientes.Endereco(aValue: string): iClientes;
begin
  result := self;
  FEndereco := aValue;
end;

function TClientes.Telefone(aValue: string): iClientes;
begin
  result := self;
  FTelefone := aValue;
end;

function TClientes.Telefone: string;
begin
  result := FTelefone;
end;

end.
