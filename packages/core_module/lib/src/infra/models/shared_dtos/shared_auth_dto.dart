import 'dart:convert';

import '../../../../core_module.dart';
import '../../../domain/entities/auth_entity.dart';

class SharedAuthDTO {
  String email;
  String password;

  SharedAuthDTO({
    required this.email,
    required this.password,
  });

  factory SharedAuthDTO.empty(){
    return SharedAuthDTO(
      email: '',
      password: ''
    );
  }
  static AuthModel fromMap(dynamic map) {
    return AuthModel(
      email: map['email'] ?? '',
      password: map['password'] ?? '',
    );
  }

  static Map<String, dynamic> toMap(AuthEntity auth) {
    return {
      'email': auth.email,
      'password': auth.password,
    };
  }

  static String toJson(AuthEntity entity) => json.encode(toMap(entity));

  static AuthModel fromJson(String entity) => fromMap(json.decode(entity));
}
