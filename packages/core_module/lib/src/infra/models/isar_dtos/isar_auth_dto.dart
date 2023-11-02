import 'package:isar/isar.dart';
import 'package:flutter/foundation.dart' as foundation;
part 'isar_auth_dto.g.dart';

@collection
class IsarAuthDTO {
  Id id = Isar.autoIncrement;
  String email;
  String password;

  IsarAuthDTO({
    required this.email,
    required this.password,
  });
}
