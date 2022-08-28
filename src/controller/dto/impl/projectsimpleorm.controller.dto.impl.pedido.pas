unit projectsimpleorm.controller.dto.impl.pedido;

interface

uses
  projectsimpleorm.controller.dto.interfaces,
  projectsimpleorm.model.service.interfaces,
  projectsimpleorm.model.entity.pedido,
  projectsimpleorm.model.service.impl.servicesimpleorm;

type
  TPedidoDTO = class(TInterfacedObject, iPedido)
    private
      FService: iService<TPedido>;
      FEntity: TPedido;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iPedido;

      function Id(Value: Integer): iPedido; overload;
      function Id: Integer; overload;
      function IdCliente(Value: Integer): iPedido; overload;
      function IdCliente: Integer; overload;
      function DataEmissao(Value: TDate): iPedido; overload;
      function DataEmissao: TDate; overload;
      function ValorTotal(Value: Double): iPedido; overload;
      function ValorTotal: Double; overload;
      function Build: iService<TPedido>;
  end;

implementation

{ TPedidoDTO }

function TPedidoDTO.Build: iService<TPedido>;
begin
  Result := FService;
end;

constructor TPedidoDTO.Create;
begin
  FEntity := TPedido.Create;
  FService := TServiceSimpleORM<TPedido>.New(FEntity);
end;

function TPedidoDTO.DataEmissao: TDate;
begin
  Result := FEntity.DataEmissao;
end;

function TPedidoDTO.DataEmissao(Value: TDate): iPedido;
begin
  Result := Self;
  FEntity.DataEmissao := Value;
end;

destructor TPedidoDTO.Destroy;
begin
  FEntity.DisposeOf;
  inherited;
end;

function TPedidoDTO.Id: Integer;
begin
  Result := FEntity.Id;
end;

function TPedidoDTO.Id(Value: Integer): iPedido;
begin
  Result := Self;
  FEntity.Id := Value;
end;

function TPedidoDTO.IdCliente(Value: Integer): iPedido;
begin
  Result := Self;
  FEntity.IdCliente := Value;
end;

function TPedidoDTO.IdCliente: Integer;
begin
  Result := FEntity.IdCliente;
end;

class function TPedidoDTO.New: iPedido;
begin
  Self.Create;
end;

function TPedidoDTO.ValorTotal(Value: Double): iPedido;
begin
  Result := Self;
  FEntity.ValorTotal := Value;
end;

function TPedidoDTO.ValorTotal: Double;
begin
  Result := FEntity.ValorTotal;
end;

end.
