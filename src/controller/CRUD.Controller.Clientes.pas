unit CRUD.Controller.Clientes;

interface

uses
  CRUD.Interfaces.Clientes,
  CRUD.Interfaces.Utilitarios;

type
  TControllerCliente = class
  private
  public
   class function CriarCliente: iClientes;
   class function DAO : iDAOClientes;
  end;

implementation

uses
  CRUD.Entidades.Clientes, 
  CRUD.DAO.Clientes;

class function TControllerCliente.CriarCliente: iClientes;
begin
  result := TClientes.New;
end;

class function TControllerCliente.DAO : iDAOClientes;
begin
  result := TDAOClientes.New;
end;

end.
