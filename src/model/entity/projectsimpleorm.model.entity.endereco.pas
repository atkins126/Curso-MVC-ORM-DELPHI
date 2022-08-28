unit projectsimpleorm.model.entity.endereco;

interface

uses
  SimpleAttributes;

type
  [Campo('ENDERECO')]
  TEndereco = class
    private
    FId: Integer;
    FIdPessoa: Integer;
    FLogradouro: String;
    FNumero: String;
    FComplemento: String;
    FCidade: String;
    FBairro: String;
    FEstado: String;
    FTipo: String;
    public
      constructor Create;
      destructor Destroy; override;

      [Campo('ID'), PK, AutoInc]
      property Id: Integer read FId write FId;

      [Campo('ID_PESSOA'), FK]
      property IdPessoa: Integer read FIdPessoa write FIdPessoa;

      [Campo('LOGRADOURO')]
      property Logradouro: String read FLogradouro write FLogradouro;

      [Campo('NUMERO')]
      property Numero: String read FNumero write FNumero;

      [Campo('COMPLEMENTO')]
      property Complemento: String read FComplemento write FComplemento;

      [Campo('CIDADE')]
      property Cidade: String read FCidade write FCidade;

      [Campo('BAIRRO')]
      property Bairro: String read FBairro write FBairro;

      [Campo('ESTADO')]
      property Estado: String read FEstado write FEstado;

      [Campo('TIPO')]
      property Tipo: String read FTipo write FTipo;
  end;

implementation

{ TEndereco }

constructor TEndereco.Create;
begin

end;

destructor TEndereco.Destroy;
begin

  inherited;
end;

end.
