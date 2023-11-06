
import 'package:core_module/src/domain/repositories/auth_repository.dart';
import '../../domain/entities/auth_entity.dart';
import '../datasources/auth_datasource.dart';

class AuthRepository implements IAuthRepository{
  final IAuthDatasource datasource;

  AuthRepository({required this.datasource});

  @override
 Future<void> add(String path, data) async{
   datasource.add(path, data);
  }

  @override
  Future<AuthEntity?> get(String email, String password) async{
   return datasource.get(email, password);
  }

  @override
  Future<void> delete(String path) async {
    datasource.delete(path);
  }
}