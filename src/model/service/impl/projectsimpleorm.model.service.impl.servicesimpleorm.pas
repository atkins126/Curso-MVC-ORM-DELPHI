unit projectsimpleorm.model.service.impl.servicesimpleorm;

interface

uses
  Data.DB,
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
  System.SysUtils,
  System.Generics.Collections,
  SimpleInterface,
  SimpleDAO,
  SimpleQueryFiredac,
  projectsimpleorm.model.service.interfaces,
  projetosimpleorm.model.resource.interfaces,
  projetosimpleorm.model.resource.impl.factory;

type
  TServiceSimpleORM<T: Class, constructor> = class(TInterfacedObject, iService<T>)
  private
    FParent: T;
    FConexao: iConexao;
    FConn: iSimpleQuery;
    FDAO: iSimpleDAO<T>;
    FDataSource: TDataSource;
  public
    constructor Create(Parent: T);
    destructor Destroy; override;
    class function New(Parent: T) : iService<T>;

    function ListarTodos: iService<T>;
    function ListarPorId(aId: Integer): iService<T>;
    function ListarPor(Field: String; Value: Variant): iService<T>;
    function Inserir: iService<T>;
    function Atualizar: iService<T>;
    function Excluir: iService<T>; overload;
    function Excluir(Field, Value: String): iService<T>; overload;
    function DataSource(var aDataSource: TDataSource) : iService<T>;
    function This: T;
end;

implementation

{ TServiceSimpleORM<T> }

function TServiceSimpleORM<T>.Atualizar: iService<T>;
begin
  Result := Self;
  FDAO.Update(FParent);
end;

constructor TServiceSimpleORM<T>.Create(Parent: T);
begin
  FParent := Parent;
  FDataSource := TDataSource.Create(nil);
  FConexao := TResource.New.Conexao;
  FConn := TSimpleQueryFiredac.New(TFDConnection(FConexao.Connect));
  FDAO := TSimpleDAO<T>.New(FConn).DataSource(FDataSource);
end;

function TServiceSimpleORM<T>.DataSource(
  var aDataSource: TDataSource): iService<T>;
begin
  Result := Self;
  aDataSource := FDataSource;
end;

destructor TServiceSimpleORM<T>.Destroy;
begin
  FDataSource.DisposeOf;
  inherited;
end;

function TServiceSimpleORM<T>.Excluir: iService<T>;
begin
  Result := Self;
  FDAO.Delete(FParent);
end;

function TServiceSimpleORM<T>.Excluir(Field, Value: String): iService<T>;
begin
  Result := Self;
  FDAO.Delete(Field, Value);
end;

function TServiceSimpleORM<T>.Inserir: iService<T>;
begin
  Result := Self;
  FDAO.Insert(FParent);
end;

function TServiceSimpleORM<T>.ListarPorId(aId: Integer): iService<T>;
begin
  Result := Self;
  FParent := FDAO.Find(aId);
end;

function TServiceSimpleORM<T>.ListarPor(Field: String;
  Value: Variant): iService<T>;
begin
  Result := Self;
  FDAO.Find(Field, Value);
end;

function TServiceSimpleORM<T>.ListarTodos: iService<T>;
begin
  Result := Self;
  FDAO.Find(False);
end;

class function TServiceSimpleORM<T>.New(Parent: T): iService<T>;
begin
  Result := Self.Create(Parent);
end;

function TServiceSimpleORM<T>.This: T;
begin
  Result := FParent;
end;

end.
