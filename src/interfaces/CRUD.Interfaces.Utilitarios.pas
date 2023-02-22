unit CRUD.Interfaces.Utilitarios;

interface

uses
  Vcl.StdCtrls;

type
  iClearEdit = interface
    ['{C8A3FE83-71A2-4956-919F-502B66FA281B}']
    function ClearEdit(aValue: TEdit): iClearEdit;
    function ClearMemo(aValue: TMemo): iClearEdit;
  end;

implementation

end.
