import 'package:core_module/core_module.dart';
import 'package:core_module/src/domain/repositories/auth_repository.dart';

import '../datasources/auth_datasource.dart';

class AuthRepository implements IAuthRepository{
  final IAuthDatasource datasource;

  AuthRepository({required this.datasource});
  @override
 Future add(String path, data) async{
   datasource.add(data: data, path: path);
  }

  @override
  Future get(String email, String password) async{
   return datasource.get(email, password);
  }

  @override
  Future<void> delete(String path) async {
    datasource.delete(path);
  }
}