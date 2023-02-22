unit CRUD.Interfaces.TipoPagamentos;

interface

uses
  CRUD.Interfaces.Conexao,
  CRUD.Interfaces.IdNome;

type
  iTipoPagamentos = interface
    ['{2EBFE49A-3A8D-4CD9-9DE1-94CAD0272BB4}']
    function Pesquisa: iPesquisaQuery;
    function FDQuery: iQuery;
    function IdNome : iIdNome<iTipoPagamentos>; 
  end;

   iDAOTipoPagamentos = interface
    ['{9E70412F-D539-41DF-9902-054BFB76A4E5}']
    procedure CreateTipoPagamentos(aValue:iTipoPagamentos);
    procedure EditTipoPagamentos(aValue: iTipoPagamentos);
    procedure DeleteTipoPagamentos(aValue: string);
  end;

implementation

end.
