import '../../domain/entities/auth_entity.dart';

abstract class IAuthDatasource implements IGetAuthDatasource, IAddAuthDatasource, IDeleteAuthDatasource {}

abstract class IGetAuthDatasource {
  Future<AuthEntity?> get(String email, String password);
}

abstract class IAddAuthDatasource {
  Future<void> add(String path,dynamic data);
}

abstract class IDeleteAuthDatasource {
  Future<void> delete(String path);
}