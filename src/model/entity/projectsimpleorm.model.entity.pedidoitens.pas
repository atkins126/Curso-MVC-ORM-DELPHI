unit projectsimpleorm.model.entity.pedidoitens;

interface

uses
  SimpleAttributes;

type
  [Tabela('PEDIDOITENS')]
  TPedidoItens = class
    private
    FId: Integer;
    FIdPedido: Integer;
    FIdProduto: Integer;
    FQuantidade: Integer;
    FValorUnitario: Double;
    FValorTotal: Double;
    public
      constructor Create;
      destructor Destroy; override;
    
      [Campo('ID'), PK, AutoInc]
      property Id: Integer read FId write FId;

      [Campo('ID_PEDIDO'), FK]
      property IdPedido: Integer read FIdPedido write FIdPedido;

      [Campo('ID_PRODUTO'), FK]
      property IdProduto: Integer read FIdProduto write FIdProduto;

      [Campo('QUANTIDADE')]
      property Quantidade: Integer read FQuantidade write FQuantidade;

      [Campo('VALORUNITARIO'), Format('#.##0,00')]
      property ValorUnitario: Double read FvalorUnitario write FvalorUnitario;

      [Campo('VALORTOTAL'), Format('#.##0,00')]
      property ValorTotal: Double read FvalorTotal write FvalorTotal;
  end;

implementation

{ TPedidoItens }

constructor TPedidoItens.Create;
begin
  
end;

destructor TPedidoItens.Destroy;
begin

  inherited;
end;

end.
