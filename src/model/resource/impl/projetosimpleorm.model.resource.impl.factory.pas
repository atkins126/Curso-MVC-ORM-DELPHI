unit projetosimpleorm.model.resource.impl.factory;

interface

uses
  projetosimpleorm.model.resource.interfaces,
  projetosimpleorm.model.resource.impl.conexaofiredac,
  projetosimpleorm.model.resource.impl.configuracao;

type
  TResource = class(TInterfacedObject, iResource)
  private
    FConexao: iConexao;
    FConfiguracao: iConfiguracao;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: TResource;

    function Conexao: iConexao;
    function Configuracao: iConfiguracao;
  end;

implementation

{ TResource }

function TResource.Conexao: iConexao;
begin
  Result := FConexao;
end;

function TResource.Configuracao: iConfiguracao;
begin
  Result := FConfiguracao;
end;

constructor TResource.Create;
begin
  FConfiguracao := TConfiguracao.New;
  FConexao := TConexao.New(FConfiguracao);
end;

destructor TResource.Destroy;
begin

  inherited;
end;

class function TResource.New: TResource;
begin
  Result := Self.Create;
end;

end.
