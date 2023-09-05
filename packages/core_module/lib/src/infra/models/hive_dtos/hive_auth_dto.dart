import 'package:hive_flutter/hive_flutter.dart';
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
}
