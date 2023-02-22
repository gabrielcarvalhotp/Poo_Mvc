unit Financeiro.View.Clientes;

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
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.WinXPanels,
  Financeiro.View.CadastroPadrao, 
  CRUD.Interfaces.Clientes;

type
  TFrmCadClientes = class(TFrmCadPadrao)
    Label1: TLabel;
    edId: TEdit;
    Label2: TLabel;
    edNome: TEdit;
    Label3: TLabel;
    EdEndereco: TEdit;
    Label4: TLabel;
    edTelefone: TEdit;
    Label5: TLabel;
    edEmail: TEdit;
    DSClientes: TDataSource;
    CBPesquisa: TComboBox;
    BitBtn1: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure BitBtnAlterarPesquisaClick(Sender: TObject);
    procedure BitBtnIncluirPesquisaClick(Sender: TObject);
    procedure BitBtnSalvarCadastroClick(Sender: TObject);
    procedure ClearComp;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtnExcluirPesquisaClick(Sender: TObject);
  private
    FCliente: iClientes;
    FStatus: string;
  public
    { Public declarations }
  end;

implementation

uses
  CRUD.Controller.Clientes, 
  CRUD.Controller.Utilitarios;
{$R *.dfm}

procedure TFrmCadClientes.BitBtn1Click(Sender: TObject);
begin
  inherited;
  FCliente.Pesquisa.Todos('CLIENTES').DataSet(DSClientes)
end;

procedure TFrmCadClientes.BitBtnAlterarPesquisaClick(Sender: TObject);
begin
  inherited;
          FStatus := TUtilitarios.Edit;
        edId.Text := FCliente.FDQuery.FieldByName('ID');
      edNome.Text := FCliente.FDQuery.FieldByName('NOME');
  EdEndereco.Text := FCliente.FDQuery.FieldByName('ENDERECO');
  edTelefone.Text := FCliente.FDQuery.FieldByName('TELEFONE');
     edEmail.Text := FCliente.FDQuery.FieldByName('EMAIL');
end;

procedure TFrmCadClientes.BitBtnExcluirPesquisaClick(Sender: TObject);
var
 id : integer;
begin
  inherited;
  if MessageDlg('Deseja deletar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    id := FCliente.FDQuery.FieldByName('ID');   
    TControllerCliente.DAO.DeleteCliente(id);

    CardPanelPrincipal.ActiveCard := CardPesquisa;
    FCliente.Pesquisa.Todos('CLIENTES').DataSet(DSClientes);
    ClearComp;
  end;
end;

procedure TFrmCadClientes.BitBtnIncluirPesquisaClick(Sender: TObject);
begin
  inherited;
  ClearComp;
  FStatus := TUtilitarios.insert;
end;

procedure TFrmCadClientes.BitBtnSalvarCadastroClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Deseja salvar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
  then
  begin
    FCliente.Endereco(EdEndereco.Text)
              .Telefone(edTelefone.Text)
               .Email(edEmail.Text)
                .DataCadastro(now)
                .IdNome.Nome(edNome.Text);

    if FStatus = TUtilitarios.insert then
      TControllerCliente.DAO.CreateCliente(FCliente)
    
    else if FStatus = TUtilitarios.edit then
    begin
      FCliente.idNome.Id(Edid.Text);
      TControllerCliente.DAO.EditCliente(FCliente);
    end;

    CardPanelPrincipal.ActiveCard := CardPesquisa;
    FCliente.Pesquisa.Todos('CLIENTES').DataSet(DSClientes);
    ClearComp;
  end;
end;

procedure TFrmCadClientes.ClearComp;
begin
  TUtilitarios
            .ClearComponentes
             .ClearEdit(edId) 
              .ClearEdit(edNome)
               .ClearEdit(EdEndereco)
                .ClearEdit(edTelefone)
                 .ClearEdit(edEmail);            
end;

procedure TFrmCadClientes.FormCreate(Sender: TObject);
begin
  inherited;
  FCliente := TControllerCliente.CriarCliente;
  FCliente.Pesquisa.Todos('CLIENTES').DataSet(DSClientes)
end;

end.
