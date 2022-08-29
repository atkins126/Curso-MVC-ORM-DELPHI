unit projectsimpleorm.model.service.interfaces;

interface

uses
  Data.DB;

type
  iService<T: Class> = interface
  ['{956FFAC5-C89F-4382-BC5D-2F8EF37465A0}']
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

end.
