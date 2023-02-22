unit CRUD.Controller.Produtos;

interface

uses
  CRUD.Interfaces.Produtos;

type
  TControllerProdutos = class
  private
  public
    class function CreateProduto: iProdutos;
    class function DAO : iDAOProdutos;
  end;

implementation

uses
  CRUD.Entidades.Produtos, 
  CRUD.model.Status,
  CRUD.DAO.Produtos;

{ TControllerProdutos }

class function TControllerProdutos.CreateProduto: iProdutos;
begin
  result := TProdutos.New;
end;

class function TControllerProdutos.DAO: iDAOProdutos;
begin
  result := TDAOProdutos.new;
end;

end.
