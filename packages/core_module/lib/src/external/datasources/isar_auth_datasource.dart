import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../../infra/datasources/auth_datasource.dart';
import '../../infra/models/isar_dtos/isar_auth_dto.dart';
import 'package:flutter/foundation.dart' as foundation;

class IsarAuthDatasource implements IAuthDatasource {
  static late Isar isar;
  List<String> params = [];

  static Future isarInit() async {
    var path = '';
    if (!foundation.kIsWeb) {
      final dir = await getApplicationSupportDirectory();
      path = dir.path;
    }
    isar = await Isar.open([IsarAuthDTOSchema], directory: path, name: 'auth');
  }

  @override
  Future<IsarAuthDTO?> get(String email, String password) async {
    var result = await isar.isarAuthDTOs.filter().emailEqualTo(email).and().passwordEqualTo(password).findFirst();
    return result;
  }

  @override
  Future<void> add({String? path, required data}) async {
    isar.isarAuthDTOs.put(data);
  }

  @override
  Future<void> delete(id) async {
    isar.isarAuthDTOs.delete(id);
  }

}
