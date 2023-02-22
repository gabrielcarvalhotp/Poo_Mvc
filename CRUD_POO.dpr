program CRUD_POO;

uses
  Vcl.Forms,
  Financeiro.View.CadastroPadrao in 'src\view\Financeiro.View.CadastroPadrao.pas' {FrmCadPadrao},
  Financeiro.View.Principal in 'src\view\Financeiro.View.Principal.pas' {FrmPrincipal},
  Financeiro.View.Clientes in 'src\view\Financeiro.View.Clientes.pas' {FrmCadClientes},
  CRUD.model.PersisteDados in 'src\model\CRUD.model.PersisteDados.pas',
  CRUD.model.Status in 'src\model\CRUD.model.Status.pas',
  CRUD.Entidades.Clientes in 'src\model\entidades\CRUD.Entidades.Clientes.pas',
  CRUD.DAO.Clientes in 'src\dao\CRUD.DAO.Clientes.pas',
  CRUD.Model.Clear in 'src\model\CRUD.Model.Clear.pas',
  CRUD.model.Conexao in 'src\model\conexao\CRUD.model.Conexao.pas',
  CRUD.model.Query in 'src\model\conexao\CRUD.model.Query.pas',
  CRUD.Interfaces.Clientes in 'src\interfaces\CRUD.Interfaces.Clientes.pas',
  CRUD.Controller.FactoryQuery in 'src\controller\CRUD.Controller.FactoryQuery.pas',
  CRUD.Controller.Clientes in 'src\controller\CRUD.Controller.Clientes.pas',
  CRUD.Interfaces.Conexao in 'src\interfaces\CRUD.Interfaces.Conexao.pas',
  CRUD.Interfaces.Utilitarios in 'src\interfaces\CRUD.Interfaces.Utilitarios.pas',
  CRUD.Interfaces.Produtos in 'src\interfaces\CRUD.Interfaces.Produtos.pas',
  CRUD.Entidades.Produtos in 'src\model\entidades\CRUD.Entidades.Produtos.pas',
  CRUD.Controller.Produtos in 'src\controller\CRUD.Controller.Produtos.pas',
  Financeiro.View.Produtos in 'src\view\Financeiro.View.Produtos.pas' {FrmCadProdutos},
  CRUD.Controller.Utilitarios in 'src\controller\CRUD.Controller.Utilitarios.pas',
  CRUD.DAO.Produtos in 'src\dao\CRUD.DAO.Produtos.pas',
  CRUD.Interfaces.IdNome in 'src\interfaces\CRUD.Interfaces.IdNome.pas',
  CRUD.Entidades.TipoPagamentos in 'src\model\entidades\CRUD.Entidades.TipoPagamentos.pas',
  CRUD.DAO.TipoPagamentos in 'src\dao\CRUD.DAO.TipoPagamentos.pas',
  CRUD.Controller.TipoPgto in 'src\controller\CRUD.Controller.TipoPgto.pas',
  Financeiro.View.TipoPagamentos in 'src\view\Financeiro.View.TipoPagamentos.pas' {FrmCadTipoPgto},
  CRUD.Interfaces.TipoPagamentos in 'src\interfaces\CRUD.Interfaces.TipoPagamentos.pas',
  CRUD.Entidades.IdNome in 'src\model\entidades\CRUD.Entidades.IdNome.pas',
  CRUD.Entidades.PesquisaQuery in 'src\model\entidades\CRUD.Entidades.PesquisaQuery.pas',
  Financeiro.View.LookUpPadrao in 'src\view\Financeiro.View.LookUpPadrao.pas' {FrmPesquisa},
  Financeiro.View.Orcamentos in 'src\view\Financeiro.View.Orcamentos.pas' {FrmMovVenda};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
