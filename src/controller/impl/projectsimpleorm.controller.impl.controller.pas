unit projectsimpleorm.controller.impl.controller;

interface

uses
  projectsimpleorm.controller.dto.interfaces,
  projetosimpleorm.model.resource.interfaces,
  projectsimpleorm.controller.interfaces,
  projectsimpleorm.controller.dto.impl.cliente,
  projetosimpleorm.model.resource.impl.configuracao,
  projectsimpleorm.controller.dto.impl.endereco,
  projectsimpleorm.controller.dto.impl.pedido,
  projectsimpleorm.controller.dto.impl.pedidoItens,
  projectsimpleorm.controller.dto.impl.pessoa,
  projectsimpleorm.controller.dto.impl.produto;

type
  TController = class(TInterfacedObject, iController)
    private
      FPedido: iPedido;
      FPedidoItens: iPedidoItens;
      FProduto: iProduto;
      FCliente: iCliente;
      FPessoa: iPessoa;
      FEndereco: iEndereco;
      FConfiguracao: iConfiguracao;
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iController;

      function Pedido: iPedido;
      function PedidoItens: iPedidoItens;
      function Produto: iProduto;
      function Cliente: iCliente;
      function Pessoa: iPessoa;
      function Endereco: iEndereco;
      function Configuracao: iConfiguracao;
  end;

implementation

{ TController }

function TController.Cliente: iCliente;
begin
  if not Assigned(FCliente) then begin
    FCliente := TClienteDTO.New;
  end;
  Result := FCliente;
end;

function TController.Configuracao: iConfiguracao;
begin
  if not Assigned(FConfiguracao) then begin
    FConfiguracao := TConfiguracao.New;
  end;
  Result := FConfiguracao;
end;

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.Endereco: iEndereco;
begin
  if not Assigned(FEndereco) then begin
    FEndereco := TEnderecoDTO.New;
  end;
  Result := FEndereco;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

function TController.Pedido: iPedido;
begin
   if not Assigned(FPedido) then begin
    FPedido := TPedidoDTO.New;
  end;
  Result := FPedido;
end;

function TController.PedidoItens: iPedidoItens;
begin
  if not Assigned(FPedidoItens) then begin
    FPedidoItens := TPedidoItensDTO.New;
  end;
  Result := FPedidoItens;
end;

function TController.Pessoa: iPessoa;
begin
  if not Assigned(FPessoa) then begin
    FPessoa := TPessoaDTO.New;
  end;
  Result := FPessoa;
end;

function TController.Produto: iProduto;
begin
  if not Assigned(FProduto) then begin
    FProduto := TProdutoDTO.New;
  end;
  Result := FProduto;
end;

end.
