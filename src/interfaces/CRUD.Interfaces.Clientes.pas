unit CRUD.Interfaces.Clientes;

interface

uses
  Data.DB, Vcl.StdCtrls, CRUD.Interfaces.Conexao, CRUD.Interfaces.IdNome;

type

  iClientes = interface
    ['{9023E66D-3F7D-4409-A2F6-30B2989A2D4D}']
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

  iDAOClientes = interface
    ['{2B172E85-CD50-477E-BED1-FE26096E64B7}']
    procedure CreateCliente(aValue: iClientes);
    procedure EditCliente(aValue: iClientes);
    procedure DeleteCliente(aIndex: integer);
  end;

implementation

end.
