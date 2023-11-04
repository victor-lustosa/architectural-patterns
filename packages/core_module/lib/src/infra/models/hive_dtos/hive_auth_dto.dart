import 'package:core_module/src/domain/entities/auth_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../../core_module.dart';
part 'hive_auth_dto.g.dart';

@HiveType(typeId: 0)
class HiveAuthDTO {
  @HiveField(0)
  String email;

  @HiveField(1)
  String password;

  HiveAuthDTO({
    required this.email,
    required this.password,
  });

  static AuthModel fromHiveToModel(HiveAuthDTO auth) {
    return AuthModel(
      email: auth.email,
      password: auth.password,
    );
  }

  static HiveAuthDTO fromEntityToHive(AuthEntity auth) {
    return HiveAuthDTO(
      email: auth.email,
      password: auth.password,
    );
  }

}
