

import 'package:core_module/core_module.dart';

import '../../domain/repositories/auth_repository.dart';

class AuthUseCase implements IAuthUseCase{
  final IAuthRepository repository;

  AuthUseCase({required this.repository});
  @override
  Future add(String path, HiveAuthDTO data) async{
    repository.add(path, data);
  }

  @override
  Future get(String email, String password) async{
    return repository.get(email, password);
  }

  @override
  Future delete(String path) async {
    repository.delete(path);
  }
}