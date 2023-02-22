unit CRUD.DAO.TipoPagamentos;

interface

uses
  CRUD.model.Conexao,
  CRUD.Interfaces.TipoPagamentos;

type
  TDAOTipoPGTO = class(TInterfacedObject, iDAOTipoPagamentos)
  private
  
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iDAOTipoPagamentos;
    procedure CreateTipoPagamentos(aValue: iTipoPagamentos);
    procedure EditTipoPagamentos(aValue: iTipoPagamentos);
    procedure DeleteTipoPagamentos(aValue: string);
  end;

implementation

uses
  CRUD.model.PersisteDados, System.SysUtils, CRUD.Interfaces.IdNome;

{ TDAOTipoPGTO }

constructor TDAOTipoPGTO.Create;
begin

end;

procedure TDAOTipoPGTO.CreateTipoPagamentos(aValue: iTipoPagamentos);
var
lsql : string;
begin
    lsql := ' INSERT INTO TIPO_PAGAMANTOS VALUES (?,?) ';
    TPersistData.New(TConexao.New)
                .PrepareStatement(lsql)
                .SetValue(1, aValue.IdNome.Nome).ExecSQL;
end;


procedure TDAOTipoPGTO.DeleteTipoPagamentos(aValue: string);
var
lsql : string;
begin
    lsql := ' DELETE FROM TIPO_PAGAMANTOS WHERE ID = :Id ';
    TPersistData.New(TConexao.New)
                .PrepareStatement(lsql)
                .AddParaments('id', aValue)
                .ExecSQL
end;

destructor TDAOTipoPGTO.Destroy;
begin

  inherited;
end;

procedure TDAOTipoPGTO.EditTipoPagamentos(aValue: iTipoPagamentos);
var
lsql : string;
begin

    lsql := ' UPDATE TIPO_PAGAMANTOS ' +
            ' SET TIPO_PAGAMANTOS.NOME = :Nome ' +
            ' WHERE TIPO_PAGAMANTOS.ID = :Id ';
    TPersistData.New(TConexao.New)
                .PrepareStatement(lsql)
                .AddParaments('Nome', aValue.IdNome.Nome)
                .AddParaments('Id', aValue.IdNome.Id)
                .ExecSQL 
end;

class function TDAOTipoPGTO.New: iDAOTipoPagamentos;
begin
  result := self.Create;
end;

end.
