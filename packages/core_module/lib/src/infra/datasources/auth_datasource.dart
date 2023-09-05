import 'package:core_module/core_module.dart';

abstract class IAuthDatasource
    implements IGetAuthDatasource, IAddAuthDatasource ,IDeleteAuthDatasource{}

abstract class IGetAuthDatasource {
  Future<HiveAuthDTO?> get(String email, String password);
}

abstract class IAddAuthDatasource {
  Future<void> add(String id, data);
}
abstract class IDeleteAuthDatasource {
  Future<void> delete(String id);
}