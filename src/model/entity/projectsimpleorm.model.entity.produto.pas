unit projectsimpleorm.model.entity.produto;

interface

uses
   SimpleAttributes, System.Classes;
   
type
  [Tabela('PRODUTO')]
  TProduto = class
  private
    FId: Integer;
    FDescricao: String;
    FPrecoVenda: Double;
    FFoto: TStream;
    procedure SetFoto(const Value: TStream);

  public
    constructor Create;
    destructor Destroy; override;

    [Campo('ID'), PK]
    property Id: Integer read Fid write Fid;

    [Campo('DESCRICAO')]
    property Descricao: String read Fdescricao write Fdescricao;

    [Campo('PRECOVENDA'), Format('#.##0,00')]
    property PrecoVenda: Double read FprecoVenda write FprecoVenda;

    [Campo('FOTO')]
    property Foto: TStream read Ffoto write SetFoto;

  end;


implementation

{ TProduto }

constructor TProduto.Create;
begin

end;

destructor TProduto.Destroy;
begin

  inherited;
end;

procedure TProduto.SetFoto(const Value: TStream);
begin
   if not Assigned(Value) then begin
    TMemoryStream(FFoto).Clear;
    Exit
  end;
  Value.Position := 0;
  TMemoryStream(FFoto).LoadFromStream(Value);
end;

end.
