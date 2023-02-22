unit CRUD.Entidades.TipoPagamentos;

interface

uses
  CRUD.Interfaces.Conexao, Data.DB, CRUD.Interfaces.TipoPagamentos,
  CRUD.Interfaces.IdNome;

type
  TTipoPagamentos = class(TInterfacedObject, iTipoPagamentos)
  private
    FPesquisaQuery : iPesquisaQuery;
    FIdNome: iidNome<iTipoPagamentos>;
    FQuery: iQuery;
    FId: integer;
    FNome: string;
    procedure DataSet(DataSource: TDataSource);
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iTipoPagamentos;
    function FDQuery: iQuery;
    
    function IdNome: iidNome<iTipoPagamentos>;
    function Pesquisa: iPesquisaQuery;
  end;

implementation

uses
  CRUD.Controller.FactoryQuery,
  System.SysUtils,
  CRUD.Entidades.IdNome,
  CRUD.Entidades.PesquisaQuery;

{ TTipoPagamentos }

function TTipoPagamentos.FDQuery: iQuery;
begin
  result := FQuery;
end;

function TTipoPagamentos.IdNome: iidNome<iTipoPagamentos>;
begin
  result := FIdNome;
end;

class function TTipoPagamentos.New: iTipoPagamentos;
begin
  result := self.Create;
end;

function TTipoPagamentos.Pesquisa: iPesquisaQuery;
begin
 result := FPesquisaQuery;
end;

constructor TTipoPagamentos.Create;
begin
  FQuery := TControllerFactoryQuery.New.Query(nil);
  FIdNome := TIdNome<iTipoPagamentos>.New(self);
  FPesquisaQuery := TPesquisaQuery.New(FQuery)
end;

procedure TTipoPagamentos.DataSet(DataSource: TDataSource);
begin
  FPesquisaQuery.DataSet(DataSource);
end;

destructor TTipoPagamentos.Destroy;
begin

  inherited;
end;

end.
