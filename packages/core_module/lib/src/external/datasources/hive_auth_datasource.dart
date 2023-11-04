import 'package:hive_flutter/adapters.dart';
import '../../../core_module.dart';
import '../../infra/datasources/auth_datasource.dart';

class HiveAuthDatasource implements IAuthDatasource {
  late Box<HiveAuthDTO> box;

  HiveAuthDatasource() {
    box = Hive.box<HiveAuthDTO>('auth');
  }

  static Future init() async {
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
  Future<AuthModel?> get(String email, String password) async {
    var result = box.values.where((entity) => entity.password == password  && entity.email == email).toList();
    return result.isNotEmpty ? HiveAuthDTO.fromHiveToModel(result[0]) : null;
  }

  @override
  Future<void> add(String path, data) async {
    box.put(path, HiveAuthDTO.fromEntityToHive(data));
  }

  @override
  Future<void> delete(path) async {
    box.delete(path);
  }
}
