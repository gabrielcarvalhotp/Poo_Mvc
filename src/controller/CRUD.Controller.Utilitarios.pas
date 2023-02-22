unit CRUD.Controller.Utilitarios;

interface

uses
  CRUD.Interfaces.Utilitarios;

Type
  TUtilitarios = class
    class function ClearComponentes : iClearEdit;
    class function Insert: string;
    class function Edit: string;
  end;

implementation

uses
  CRUD.model.Status, CRUD.Model.Clear;

class function TUtilitarios.ClearComponentes: iClearEdit;
begin
  result := TClearComp.New;
end;

class function TUtilitarios.Edit: string;
begin
  result := TStatus.Edit;
end;

class function TUtilitarios.Insert: string;
begin
  result := TStatus.Insert;
end;

end.
