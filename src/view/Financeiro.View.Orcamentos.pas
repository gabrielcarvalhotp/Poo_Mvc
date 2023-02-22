unit Financeiro.View.Orcamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Financeiro.View.CadastroPadrao, Data.DB,
  Vcl.NumberBox, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.Controls, Vcl.ExtCtrls,
  Vcl.WinXPanels;

type
  TFrmMovVenda = class(TFrmCadPadrao)
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edNomeCliente: TEdit;
    BitBtnLKPCliente: TBitBtn;
    LKPformasdepagamento: TDBLookupComboBox;
    btnContinuar: TButton;
    DSPesquisaProduto: TDataSource;
    Panel4: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    btnAdicionarProduto: TSpeedButton;
    edIdProduto: TEdit;
    edNomeProduto: TEdit;
    btnLKPProduto: TBitBtn;
    dbgridProdutos: TDBGrid;
    Panel5: TPanel;
    Label10: TLabel;
    edPrecoPrazo: TEdit;
    Panel6: TPanel;
    Label11: TLabel;
    edPrecoVista: TEdit;
    edQuantidade: TNumberBox;
    BitBtnMenos: TBitBtn;
    BitBtnMais: TBitBtn;
    btnExcluir: TButton;
    BitBtn3: TBitBtn;
    edId: TEdit;
    edClienteId: TEdit;
    Edit3: TEdit;
    DSTipoPgto: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
