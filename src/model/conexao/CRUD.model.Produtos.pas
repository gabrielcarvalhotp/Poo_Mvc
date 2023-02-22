unit CRUD.model.Produtos;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CRUD.model.Conexao;

type
  TDMProdutos = class(TDataModule)
    DSProdutos: TDataSource;
    FDQProdutos: TFDQuery;
  private
    { Private declarations }
  public

  end;

var
  DMProdutos: TDMProdutos;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

end.
