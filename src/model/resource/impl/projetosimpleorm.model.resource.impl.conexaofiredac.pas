unit projetosimpleorm.model.resource.impl.conexaofiredac;

interface

uses
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.Ui.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Comp.Client,
  projetosimpleorm.model.resource.interfaces,
  Data.DB,
  System.SysUtils;

type
  TConexao = class(TInterfacedObject, iConexao)
  private
    FConfiguracao: iConfiguracao;
    FConn: TFDConnection;
  public
    constructor Create(Configuracao: iConfiguracao);
    destructor Destroy; override;
    class function New(Configuracao: iConfiguracao): iConexao;
    function Connect: TCustomConnection;

  published

  end;

implementation

{ TConexao }

function TConexao.Connect: TCustomConnection;
begin
  try
    FConn.Params.DriverID := FConfiguracao.DriverID;
    FConn.Params.Database := FConfiguracao.DataBase;
    FConn.Params.UserName := FConfiguracao.UserName;
    FConn.Params.Password := FConfiguracao.Password;
    FConn.Params.Add('Port=' + FConfiguracao.Port);
    FConn.Params.Add('Server=' + FConfiguracao.Server);

    if not FConfiguracao.Schema.IsEmpty then begin
      FConn.Params.Add('MetaCurSchema=' + FConfiguracao.Schema);
      FConn.Params.Add('MetaDefSchema=' + FConfiguracao.Schema);
    end;

    if not FConfiguracao.Locking.IsEmpty then begin
      FConn.Params.Add('LockingMode=' + FConfiguracao.Locking);
    end;

    FConn.Connected := True;

    Result := FConn;
  except
    raise Exception.Create('Não foi possível realizar a conexão!');
  end;
end;

constructor TConexao.Create(Configuracao: iConfiguracao);
begin
  FConn := TFDConnection.Create(nil);
  FConfiguracao := Configuracao;
end;

destructor TConexao.Destroy;
begin
  FConn.DisposeOf;
  inherited;
end;

class function TConexao.New(Configuracao: iConfiguracao): iConexao;
begin
  Result := Self.Create(Configuracao);
end;

end.
