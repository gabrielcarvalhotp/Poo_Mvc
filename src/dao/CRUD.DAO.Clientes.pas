unit CRUD.DAO.Clientes;

interface

uses
 CRUD.Interfaces.Clientes, system.SysUtils;

type
  TDAOClientes = class(TInterfacedObject, iDAOClientes)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iDAOClientes;
    procedure CreateCliente(aValue: iClientes);
    procedure EditCliente(aValue: iClientes);
    procedure DeleteCliente(aIndex: integer);
  end;

implementation

uses
  CRUD.model.PersisteDados, CRUD.model.Conexao;


constructor TDAOClientes.Create;
begin

end;

procedure TDAOClientes.CreateCliente(aValue: iClientes);
var
  lSQL: string;
begin
  try
    lSQL := ' insert into CLIENTES values (?,?,?,?,?,?) ';
    TPersistData.New(TConexao.New)
                 .PrepareStatement(lSQL)
                  .SetValue(1, aValue.idNome.nome)
                   .SetValue(2, aValue.Endereco)
                    .SetValue(3, aValue.Telefone)
                     .SetValue(4, aValue.Email)
                      .SetValue(5, aValue.DataCadastro)
                       .ExecSQL;
  except
    raise Exception.create('N�o foi possivel incluir um novo Cliente');
  end;
end;

procedure TDAOClientes.EditCliente(aValue: iClientes);
var
  lSQL: string;
begin
  try
    lSQL := ' update CLIENTES set ' + 
            ' CLIENTES.nome = :pNome , ' +
            ' CLIENTES.endereco = :pEndereco , ' +
            ' CLIENTES.telefone = :pTelefone , ' + 
            ' CLIENTES.email = :pEmail  ' +
            ' where CLIENTES.id = :pId ';

    TPersistData.New(TConexao.New)
                 .PrepareStatement(lSQL)
                  .AddParaments('pEndereco',aValue.Endereco)
                   .AddParaments('pNome', aValue.idNome.nome)
                    .AddParaments('pTelefone', aValue.Telefone)
                     .AddParaments('pEmail',aValue.Email)
                      .AddParaments('pId', aValue.idNome.id)
                       .ExecSQL
  except
    raise Exception.create('N�o foi possivel alterar o Cliente');

  end;
end;

class function TDAOClientes.New: iDAOClientes;
begin
 result := self.Create;
end;

procedure TDAOClientes.DeleteCliente(aIndex: integer);
var
  lSQL: string;
begin
  try
    lSQL := ' delete from clientes where id = :pId ';
    TPersistData.New(TConexao.New)
                 .PrepareStatement(lSQL)
                  .AddParaments('pId', aIndex)
                   .ExecSQL;
  except
    raise Exception.create('N�o foi possivel deletar o Cliente');
  end;
end;

destructor TDAOClientes.Destroy;
begin

  inherited;
end;

end.
