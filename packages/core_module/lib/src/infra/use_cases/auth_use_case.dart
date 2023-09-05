

import 'package:core_module/core_module.dart';

import '../../domain/repositories/auth_repository.dart';

class AuthUseCase implements IAuthUseCase{
  final IAuthRepository repository;

  AuthUseCase({required this.repository});
  @override
  Future add(HiveAuthDTO data) async{
    repository.add(data.email, data);
  }

  @override
  Future<HiveAuthDTO?> get(String email, String password) async{
    return repository.get(email, password);
  }

  @override
  Future delete(data) async {
    repository.delete(data.email);
  }

}