unit projectsimpleorm.model.entity.pessoa;

interface

uses
  SimpleAttributes;

type
  [Tabela('PESSOA')]
  TPessoa = class
  private
    FId: Integer;
    FNome: String;
    FDataNascReg: TDate;

  public
    constructor Create;
    destructor Destroy; override;

    [Campo('ID'), PK, AutoInc]
    property Id: Integer read Fid write Fid;

    [Campo('NOME')]
    property Nome: String read FNome write FNome;

    [Campo('DATANASCREG')]
    property DataNascReg: TDate read FDataNascReg write FDataNascReg;

  end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

end.
