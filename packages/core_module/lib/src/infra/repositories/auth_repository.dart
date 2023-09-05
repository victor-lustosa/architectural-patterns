import 'package:core_module/core_module.dart';
import 'package:core_module/src/domain/repositories/auth_repository.dart';

import '../datasources/auth_datasource.dart';

class AuthRepository implements IAuthRepository{
  final IAuthDatasource datasource;

  AuthRepository({required this.datasource});
  @override
 Future add(String id, data) async{
   datasource.add(id, data);
  }

  @override
  Future<HiveAuthDTO?> get(String email, String password) async{
   return datasource.get(email, password);
  }

  @override
  Future<void> delete(String id) async {
    datasource.delete(id);
  }
}