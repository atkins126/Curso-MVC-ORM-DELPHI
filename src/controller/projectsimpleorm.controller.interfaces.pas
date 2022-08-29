unit projectsimpleorm.controller.interfaces;

interface

uses
  projectsimpleorm.controller.dto.interfaces,
  projetosimpleorm.model.resource.interfaces;

type
  iController = interface
  ['{5C186A35-3349-49EA-BA4A-DC1804167315}']
    function Pedido: iPedido;
    function PedidoItens: iPedidoItens;
    function Produto: iProduto;
    function Cliente: iCliente;
    function Pessoa: iPessoa;
    function Endereco: iEndereco;
    function Configuracao: iConfiguracao;
  end;

implementation

end.
