unit projectsimpleorm.controller.dto.impl.endereco;

interface

uses
  projectsimpleorm.controller.dto.interfaces,
  projectsimpleorm.model.service.interfaces,
  projectsimpleorm.model.entity.endereco,
  projectsimpleorm.model.service.impl.servicesimpleorm;

type
  TEnderecoDTO = class(TInterfacedObject, iEndereco)
  private
  public
    FEntity: TEndereco;
    FService: iService<TEndereco>;
    constructor Create;
    destructor Destroy; override;
    class function New : iEndereco;

    function Id(Value: Integer): iEndereco; overload;
    function Id: Integer; overload;
    function IdPessoa(Value: Integer): iEndereco; overload;
    function IdPessoa: Integer; overload;
    function Logradouro(Value: String): iEndereco; overload;
    function Logradouro: String; overload;
    function Numero(Value: String): iEndereco; overload;
    function Numero: String; overload;
    function Complemento(Value: String): iEndereco; overload;
    function Complemento: String; overload;
    function Bairro(Value: String): iEndereco; overload;
    function Bairro: String; overload;
    function Estado(Value: String): iEndereco; overload;
    function Estado: String; overload;
    function Tipo(Value: String): iEndereco; overload;
    function Tipo: String; overload;
    function Build: iService<TEndereco>;
  end;

implementation

{ TEnderecoDTO }

function TEnderecoDTO.Bairro(Value: String): iEndereco;
begin
  Result := Self;
  FEntity.Bairro := Value;
end;

function TEnderecoDTO.Bairro: String;
begin
  Result := FEntity.Bairro;
end;

function TEnderecoDTO.Build: iService<TEndereco>;
begin
  Result := FService;
end;

function TEnderecoDTO.Complemento(Value: String): iEndereco;
begin
  Result := Self;
  FEntity.Complemento := Value;
end;

function TEnderecoDTO.Complemento: String;
begin
  Result := FEntity.Complemento;
end;

constructor TEnderecoDTO.Create;
begin
  FEntity := TEndereco.Create;
  FService := TServiceSimpleORM<TEndereco>.New(FEntity);
end;

destructor TEnderecoDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TEnderecoDTO.Estado(Value: String): iEndereco;
begin
  Result := Self;
  FEntity.Estado := Value;
end;

function TEnderecoDTO.Estado: String;
begin
  Result := FEntity.Estado;
end;

function TEnderecoDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TEnderecoDTO.Id(Value: Integer): iEndereco;
begin
  Result := Self;
  FEntity.Id := Value;
end;

function TEnderecoDTO.IdPessoa: Integer;
begin
  Result := FEntity.IdPessoa;
end;

function TEnderecoDTO.IdPessoa(Value: Integer): iEndereco;
begin
  Result := Self;
  FEntity.IdPessoa := Value;
end;

function TEnderecoDTO.Logradouro(Value: String): iEndereco;
begin
  Result := Self;
  FEntity.Logradouro := Value;
end;

function TEnderecoDTO.Logradouro: String;
begin
  Result := FEntity.Logradouro;
end;

class function TEnderecoDTO.New: iEndereco;
begin
  Self.Create;
end;

function TEnderecoDTO.Numero(Value: String): iEndereco;
begin
  Result := Self;
  FEntity.Numero := Value;
end;

function TEnderecoDTO.Numero: String;
begin
  Result := FEntity.Numero;
end;

function TEnderecoDTO.Tipo(Value: String): iEndereco;
begin
  Result := Self;
  FEntity.Tipo := Value;
end;

function TEnderecoDTO.Tipo: String;
begin
  Result := FEntity.Tipo;
end;

end.
