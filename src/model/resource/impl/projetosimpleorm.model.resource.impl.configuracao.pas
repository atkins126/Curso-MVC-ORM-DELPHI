unit projetosimpleorm.model.resource.impl.configuracao;

interface

uses
  System.SysUtils,
  LocalCache4D,
  projetosimpleorm.model.resource.interfaces;

type
  TConfiguracao = class(TInterfacedObject, iConfiguracao)
  private

  public
    constructor Create;
    destructor Destroy; override;
    class function New : iConfiguracao;

    function DriverID(AValue: String): iConfiguracao; overload;
    function DriverID                : String; overload;
    function DataBase(AValue: String): iConfiguracao; overload;
    function DataBase                : String; overload;
    function UserName(AValue: String): iConfiguracao; overload;
    function UserName                : String; overload;
    function Password(AValue: String): iConfiguracao; overload;
    function Password                : String; overload;
    function Port(AValue: String)    : iConfiguracao; overload;
    function Port                    : String; overload;
    function Server(AValue: String)  : iConfiguracao; overload;
    function Server                  : String; overload;
    function Schema(AValue: String)  : iConfiguracao; overload;
    function Schema                  : String; overload;
    function Locking(AValue: String) : iConfiguracao; overload;
    function Locking                 : String; overload;

  published

  end;

implementation

{ TConfiguracao }

constructor TConfiguracao.Create;
begin
  if not FileExists('simpleorm.lc4') then
  begin
    LocalCache.SaveToStorage('simpleorm.lc4');
  end;

  LocalCache.LoadDatabase('simpleorm.lc4');
  LocalCache.Instance('Configuracao');
end;

function TConfiguracao.DataBase: String;
begin
  Result := LocalCache.GetItem('Database');
end;

function TConfiguracao.DataBase(AValue: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Database', AValue);
end;

destructor TConfiguracao.Destroy;
begin
  LocalCache.SaveToStorage('simpleorm.lc4');
  inherited;
end;

function TConfiguracao.DriverID: String;
begin
  Result := LocalCache.GetItem('DriverID');
end;

function TConfiguracao.DriverID(AValue: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('DriverID', AValue);
end;

function TConfiguracao.Locking(AValue: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Locking', AValue);
end;

function TConfiguracao.Locking: String;
begin
  Result := LocalCache.GetItem('Locking');
end;

class function TConfiguracao.New: iConfiguracao;
begin
  Self.Create;
end;

function TConfiguracao.Password(AValue: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Password', AValue);
end;

function TConfiguracao.Password: String;
begin
  Result := LocalCache.GetItem('Password');
end;

function TConfiguracao.Port: String;
begin
  Result := LocalCache.GetItem('Port')
end;

function TConfiguracao.Port(AValue: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Port', AValue);
end;

function TConfiguracao.Schema: String;
begin
  Result := LocalCache.GetItem('Schema');
end;

function TConfiguracao.Schema(AValue: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Schema', AValue);
end;

function TConfiguracao.Server(AValue: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('Server', AValue);
end;

function TConfiguracao.Server: String;
begin
  Result := LocalCache.GetItem('Server');
end;

function TConfiguracao.UserName(AValue: String): iConfiguracao;
begin
  Result := Self;
  LocalCache.SetItem('UserName', AValue);
end;

function TConfiguracao.UserName: String;
begin
  Result := LocalCache.GetItem('UserName')
end;

end.
