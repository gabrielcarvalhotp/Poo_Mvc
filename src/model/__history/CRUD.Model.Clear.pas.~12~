unit CRUD.Model.Clear;

interface

uses
  Vcl.StdCtrls, CRUD.Interfaces.Utilitarios;
type

  TClearComp = class(TInterfacedObject, iClearEdit)
  private
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iClearEdit;
    function ClearEdit(avalue: TEdit): iClearEdit;
    function ClearMemo(avalue: TMemo): iClearEdit;
  end;

implementation

{ TClearEdit }

function TClearComp.ClearEdit(avalue: TEdit): iClearEdit;
begin
  avalue.Text := '';
  result := self;
end;

function TClearComp.ClearMemo(avalue: TMemo): iClearEdit;
begin
  avalue.Lines.Clear;
  result := self;
end;

constructor TClearComp.Create;
begin

end;

destructor TClearComp.Destroy;
begin

  inherited;
end;

class function TClearComp.New: iClearEdit;
begin
  result := self.Create;
end;

end.
