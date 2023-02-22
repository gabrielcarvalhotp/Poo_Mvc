unit CRUD.DAO.Produtos;

interface

uses
  CRUD.Interfaces.Produtos, 
  system.SysUtils;

type
  TDAOProdutos = class(TInterfacedObject, iDAOProdutos)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iDAOProdutos;
    procedure CreateProduto(aValue: iprodutos);
    procedure EditProduto(aValue: iprodutos);
    procedure DeleteProduto(aIndex: integer);
  end;

implementation

uses
  CRUD.model.PersisteDados,
  CRUD.model.Conexao;

{ TDAOProdutos }

constructor TDAOProdutos.Create;
begin

end;

procedure TDAOProdutos.CreateProduto(aValue: iprodutos);
var
  lsql: string;
begin
  lsql := ' INSERT INTO PRODUTOS VALUES (?,?,?,?,?) ';
  try
  TPersistData.New(TConexao.New)
               .PrepareStatement(lsql)
                .SetValue(1, aValue.IdNome.Nome)
                 .SetValue(2, aValue.Preco)
                  .SetValue(3, aValue.DataCadastro)
                   .SetValue(4, aValue.Descricao)
                    .ExecSQL;
  except
    raise Exception.Create('N�o foi possivel incluir um novo Produto');

  end;
end;

procedure TDAOProdutos.DeleteProduto(aIndex: integer);
var
  lsql: string;
begin
  lsql := ' delete from PRODUTOS where PRODUTOS.Id = :id ';
  try
    TPersistData.New(TConexao.New)
               .PrepareStatement(lsql)
                .AddParaments('id', aIndex)
                 .ExecSQL
  
  except
    raise Exception.Create('N�o foi possivel deletar um novo Produto')

  end;

end;

destructor TDAOProdutos.Destroy;
begin

  inherited;
end;

procedure TDAOProdutos.EditProduto(aValue: iprodutos);
var
  lsql : string;
begin
 try
  lSQL := ' update PRODUTOS set ' +
          ' produtos.nome = :nome, ' +
          ' produtos.preco = :preco, ' +
          ' produtos.descricao = :descricao ' +
          ' where produtos.id = :id ';
  TPersistData.New(TConexao.New)
               .PrepareStatement(lsql)
                .AddParaments('nome', aValue.IdNome.Nome)
                 .AddParaments('preco', aValue.Preco)
                  .AddParaments('descricao', aValue.Descricao)
                   .AddParaments('id', aValue.IdNome.Id)
                    .ExecSQL;
 except 
   raise Exception.Create('Error Message ' + Self.ClassName );

 end;
end;

class function TDAOProdutos.New: iDAOProdutos;
begin
  result := self.Create;
end;

end.
