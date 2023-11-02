import 'package:core_module/core_module.dart';

abstract class IAuthDatasource
    implements IGetAuthDatasource, IAddAuthDatasource, IDeleteAuthDatasource {}

abstract class IGetAuthDatasource {
  Future get(String email, String password);
}

abstract class IAddAuthDatasource {
  Future<void> add({String? path, required data});
}
abstract class IDeleteAuthDatasource {
  Future<void> delete(path);
}