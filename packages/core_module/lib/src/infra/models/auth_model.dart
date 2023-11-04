import '../../domain/entities/auth_entity.dart';

class AuthModel extends AuthEntity {
  AuthModel(
      {required String email,
        required String password,
      }): super(
    email: email,
    password: password,
  );
  static AuthEntity fromMap(dynamic json) {
    return AuthEntity(
      email: json['email'],
      password: json['password'],
    );
  }

  static Map<String, dynamic> toMap(AuthEntity data) {
    return {
      'email': data.email,
      'password': data.password,
    };
  }
}
