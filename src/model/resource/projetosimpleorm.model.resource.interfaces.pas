unit projetosimpleorm.model.resource.interfaces;

interface

uses
  Data.DB;

type
  iConexao = interface
    function Connect: TCustomConnection;
  end;

  iConfiguracao = interface
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
  end;

  iResource = interface
    function Conexao: iConexao;
    function Configuracao: iConfiguracao;
  end;

implementation

end.
