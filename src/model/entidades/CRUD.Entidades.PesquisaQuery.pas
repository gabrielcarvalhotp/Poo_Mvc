unit CRUD.Entidades.PesquisaQuery;

interface

uses
  CRUD.Interfaces.Conexao, Data.DB;

type
  TPesquisaQuery = class(TinterfacedObject, iPesquisaQuery)
  private
    FParent: iQuery;
  public
    constructor Create(aValue: iQuery);
    destructor Destroy; override;
    class function New(aValue: iQuery): iPesquisaQuery;
    function Todos(aValue: string): iPesquisaQuery;
    function DataSet(DataSource: TDataSource): iPesquisaQuery;
  end;

implementation

{ TPesquisaQuery }

constructor TPesquisaQuery.Create(aValue: iQuery);
begin
  FParent := aValue;
end;

function TPesquisaQuery.DataSet(DataSource: TDataSource): iPesquisaQuery;
begin
  result := self;
  DataSource.DataSet := FParent.DataSet;
end;

destructor TPesquisaQuery.Destroy;
begin

  inherited;
end;

class function TPesquisaQuery.New(aValue: iQuery): iPesquisaQuery;
begin
  result := self.Create(aValue);
end;

function TPesquisaQuery.Todos(aValue: string): iPesquisaQuery;
begin
  result := self;
  FParent.Close.Clear.SQL(' SELECT * FROM ' + aValue).Active;
end;

end.
