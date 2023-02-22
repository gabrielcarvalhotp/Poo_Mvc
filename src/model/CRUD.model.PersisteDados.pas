unit CRUD.model.PersisteDados;

interface

uses
  FireDAC.Comp.Client, CRUD.model.Conexao, CRUD.Interfaces.Conexao;

type
  iPersistData = interface
    ['{76012DA8-FB57-4FDE-9C9E-FA6A3FE99333}']
    function PrepareStatement(aSql: string) : iPersistData;
    function AddParaments(aName: string; aValue: string): iPersistData; overload;
    function AddParaments(aName: string; aValue: Integer): iPersistData; overload;
    function AddParaments(aName: string; aValue: double): iPersistData; overload;
    function AddParaments(aName: string; aValue: TDateTime): iPersistData; overload;
    function SetValue(aIndex: Integer; aValue: variant): iPersistData;
    function ExecSQL: iPersistData;
    function StartTransation: iPersistData;
    function Rollback: iPersistData;
  end;

  TPersistData = class(TInterfacedObject, iPersistData)
  private
  FParent: iConexao;
  FFDQuery : TFDQuery;
  public
    constructor Create(parent: iConexao);
    destructor destroy;override;
    class function New(parent: iConexao) : iPersistData;
    function PrepareStatement(aSql: string) : iPersistData;
    function AddParaments(aName : string; aValue: string): iPersistData; overload;
    function AddParaments(aName: string; aValue: Integer): iPersistData; overload;
    function AddParaments(aName: string; aValue: double): iPersistData; overload;
    function AddParaments(aName: string; aValue: TDateTime): iPersistData; overload;
    function SetValue(aIndex: Integer; aValue: variant): iPersistData;
    function ExecSQL: iPersistData;
    function StartTransation: iPersistData;
    function Rollback: iPersistData;
  end;

implementation

constructor TPersistData.Create(parent: iConexao);
begin
  FFDQuery := TFDQuery.Create(nil);
  FParent := parent;
  FFDQuery.Connection := TFDConnection(Fparent.Conectar);
end;

destructor TPersistData.destroy;
begin
  inherited;
  FFDQuery.DisposeOf
end;

class function TPersistData.New(parent: iConexao) : iPersistData;
begin
  result := self.Create(parent);
end;

function TPersistData.AddParaments(aName: string; aValue: TDateTime): iPersistData;
begin
  FFDQuery.FindParam(aName).AsDateTime := aValue;
  result := self
end;

function TPersistData.AddParaments(aName: string; aValue: double): iPersistData;
begin
  FFDQuery.FindParam(aName).AsFloat := aValue;
  result := self
end;

function TPersistData.AddParaments(aName: string; aValue: Integer): iPersistData;
begin
  FFDQuery.FindParam(aName).AsInteger := aValue;
  result := self
end;

function TPersistData.AddParaments(aName, aValue: string): iPersistData;
begin
  FFDQuery.FindParam(aName).AsString := aValue;
  result := self
end;

function TPersistData.ExecSQL: iPersistData;
begin
  FFDQuery.ExecSQL;
  result := self
end;

function TPersistData.PrepareStatement(aSql: string): iPersistData;
begin
  FFDQuery.SQL.Clear;
  FFDQuery.SQL.add(aSQl);
  result := self;
end;

function TPersistData.Rollback: iPersistData;
begin
  //DMConexao.FDConnection.Rollback;
  result := self
end;

function TPersistData.SetValue(aIndex: Integer; aValue: variant): iPersistData;
begin
  FFDQuery.Params.Add;
  FFDQuery.Params[aIndex].Value := aValue;
  result := self
end;

function TPersistData.StartTransation: iPersistData;
begin
 // DMConexao.FDConnection.StartTransaction;
  result := self
end;

end.
