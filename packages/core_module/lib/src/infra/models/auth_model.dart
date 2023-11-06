import '../../domain/entities/auth_entity.dart';

class AuthModel extends AuthEntity {
  AuthModel(
      {required String email,
        required String password,
      }): super(
    email: email,
    password: password,
  );
}
