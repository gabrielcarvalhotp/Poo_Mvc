unit Financeiro.View.LookUpPadrao;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Data.DB,
  Vcl.StdCtrls,
  Vcl.Grids,
  Vcl.DBGrids, 
  CRUD.Interfaces.Conexao;

type
  TFrmPesquisa = class(TForm)
    edPesquisaId: TEdit;
    Label1: TLabel;
    DBGridPesquisa: TDBGrid;
    DSLookUp: TDataSource;
    Label2: TLabel;
    edPesquisaNome: TEdit;
    procedure DBGridPesquisaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edPesquisaIdChange(Sender: TObject);
    procedure DBGridPesquisaCellClick(Column: TColumn);
    procedure edPesquisaNomeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FDQLookUp : IQuery;
  public
    { Public declarations }
    id: string;
    nome: string;
    procedure grid(aValue : string);
  end;

implementation

uses
  CRUD.Controller.FactoryQuery;

{$R *.dfm}

procedure TFrmPesquisa.DBGridPesquisaCellClick(Column: TColumn);
begin
  id := DBGridPesquisa.Columns[0].Field.Value;
  nome := DBGridPesquisa.Columns[1].Field.Value;
  edPesquisaId.Text := '';
  edPesquisaNome.Text := '';
  self.Close;
end;

procedure TFrmPesquisa.DBGridPesquisaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if odd(DBGridPesquisa.DataSource.DataSet.RecNo) then
  begin
    DBGridPesquisa.Canvas.Brush.Color := $00D2C8BE;
    DBGridPesquisa.DefaultDrawDataCell(Rect, Column.Field, State)
  end;
end;

procedure TFrmPesquisa.edPesquisaIdChange(Sender: TObject);
var
  nomeDaColuna: string;
begin
  edPesquisaNome.Text := '';
  nomeDaColuna := DBGridPesquisa.Columns[0].FieldName;
  if edPesquisaId.Text <> '' then
    FDQLookUp.locate(nomeDaColuna, edPesquisaId.Text);
end;

procedure TFrmPesquisa.edPesquisaNomeChange(Sender: TObject);
var
  nomeDaColuna: string;
begin
  edPesquisaId.Text := '';
  nomeDaColuna := DBGridPesquisa.Columns[1].FieldName;
  if edPesquisaNome.Text <> '' then
    FDQLookUp.locate(nomeDaColuna, edPesquisaNome.Text);
end;

procedure TFrmPesquisa.FormCreate(Sender: TObject);
begin
  FDQLookUp := TControllerFactoryQuery.New.Query(nil);
end;

procedure TFrmPesquisa.grid(aValue: string);
begin
  FDQLookUp.Close.Clear.SQL(aValue).Active;
  DSLookUp.DataSet := FDQLookUp.DataSet;
end;

end.
