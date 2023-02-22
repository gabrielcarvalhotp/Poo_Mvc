unit CRUD.Interfaces.IdNome;

interface

type
  iIdNome<T> = interface
    ['{9DBD2E87-6BD0-479E-8F65-2BE25E1815E1}']
    function Id(aValue: string): iIdNome<T>; overload;
    function Id: integer; overload;
    function Nome(aValue: string): iIdNome<T>; overload;
    function Nome: string; overload;
    function &End: iInterface;
  end;

implementation

end.
