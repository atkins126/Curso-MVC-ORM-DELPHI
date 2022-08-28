unit projectsimpleorm.model.entity.pedido;

interface

uses
  SimpleAttributes;

type
  [Tabela('PEDIDO')]
  TPedido = class
    private
    FId: Integer;
    FIdCliente: Integer;
    FDataEmissao: TDate;
    FValorTotal: Double;
    public                                  
      constructor Create;
      destructor Destroy; override;
      
      [Campo('ID'), PK, AutoInc]
      property Id: Integer read Fid write Fid;

      [Campo('ID_CLIENTE'), FK]
      property IdCliente: Integer read FidCliente write FidCliente;

      [Campo('DATAEMISSAO'), NotNull]
      property DataEmissao: TDate read FdataEmissao write FdataEmissao;

      [Campo('VALORTOTAL'), Format('#.##0,00')]
      property ValorTotal: Double read FvalorTotal write FvalorTotal;
  end;

implementation

{ TPedido }

constructor TPedido.Create;
begin
  
end;

destructor TPedido.Destroy;
begin

  inherited;
end;

end.
