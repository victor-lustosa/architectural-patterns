

import 'package:core_module/core_module.dart';

import '../../domain/entities/auth_entity.dart';
import '../../domain/repositories/auth_repository.dart';

class AuthUseCase implements IAuthUseCase{
  final IAuthRepository repository;

  AuthUseCase({required this.repository});
  @override
  Future<void> add(String path, AuthModel data) async{
    repository.add(path, data);
  }

  @override
  Future<AuthEntity?> get(String email, String password) async{
    return repository.get(email, password);
  }

  @override
  Future<void> delete(String path) async {
    repository.delete(path);
  }
}