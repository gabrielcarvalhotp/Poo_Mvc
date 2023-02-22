unit CRUD.Controller.TipoPgto;

interface
uses
  CRUD.Interfaces.IdNome,
  CRUD.Interfaces.TipoPagamentos,
  CRUD.Interfaces.Utilitarios;

type
  TControllerTipoPgto = class
  private
  public
   class function CriarTipoPgto: iTipoPagamentos;
   class function DAO : iDAOTipoPagamentos;
  end;

implementation

uses
  CRUD.Entidades.TipoPagamentos, 
  CRUD.DAO.TipoPagamentos;

{ TControllerCliente }

class function TControllerTipoPgto.CriarTipoPgto: iTipoPagamentos;
begin
  result := TTipoPagamentos.new;
end;

class function TControllerTipoPgto.DAO: iDAOTipoPagamentos;
begin
  result := TDAOTipoPGTO.New;
end;

end.
