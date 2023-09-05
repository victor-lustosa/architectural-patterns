
import 'package:hive_flutter/adapters.dart';

import '../../infra/datasources/auth_datasource.dart';
import '../../infra/models/hive_dtos/hive_auth_dto.dart';

class HiveAuthDatasource implements IAuthDatasource {
  late Box<HiveAuthDTO> box;
  List<String> params = [];

  HiveAuthDatasource() {
    box = Hive.box<HiveAuthDTO>('auth');
  }

  static Future hiveInit() async {
    await Hive.initFlutter();
    _allAdapters();
    await Future.wait<void>([
      Hive.openBox<HiveAuthDTO>('auth'),
    ]);
  }

  static _allAdapters() {
    Hive.registerAdapter(HiveAuthDTOAdapter());
  }

  @override
  Future<HiveAuthDTO?> get(String email, String password) async {
    var result = box.values
        .where((entity) => entity.password == password  && entity.email == email)
        .toList();
      return result.isNotEmpty ? result[0] : null;
  }

  @override
  Future<void> add(String id, data) async {
    box.put(id, data);
  }

  @override
  Future<void> delete(String id) async {
    box.delete(id);
  }
}
