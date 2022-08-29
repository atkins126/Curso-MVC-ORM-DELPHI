unit projetosimpleorm.model.resource.interfaces;

interface

uses
  Data.DB;

type
  iConexao = interface
  ['{966D08AC-48EA-437A-836A-4DF77A3957AA}']
    function Connect: TCustomConnection;
  end;

  iConfiguracao = interface
  ['{1833EFD1-9713-4FB9-9578-6766C70901C2}']
    function DriverID(Value: String): iConfiguracao; overload;
    function DriverID: String; overload;
    function DataBase(Value: String): iConfiguracao; overload;
    function DataBase: String; overload;
    function UserName(Value: String): iConfiguracao; overload;
    function UserName: String; overload;
    function Password(Value: String): iConfiguracao; overload;
    function Password: String; overload;
    function Port(Value: String): iConfiguracao; overload;
    function Port: String; overload;
    function Server(Value: String): iConfiguracao; overload;
    function Server: String; overload;
    function Schema(Value: String): iConfiguracao; overload;
    function Schema: String; overload;
    function Locking(Value: String): iConfiguracao; overload;
    function Locking: String; overload;
  end;

  iResource = interface
  ['{DA677CA9-A811-4C65-A576-CF5C1C14F99E}']
    function Conexao: iConexao;
    function Configuracao: iConfiguracao;
  end;

implementation

end.
