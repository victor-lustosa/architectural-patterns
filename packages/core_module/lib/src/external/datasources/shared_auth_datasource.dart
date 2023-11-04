import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/entities/auth_entity.dart';
import '../../infra/datasources/auth_datasource.dart';
import '../../infra/models/shared_dtos/shared_auth_dto.dart';

class SharedAuthDatasource implements IAuthDatasource {
  late SharedPreferences _shared;

  @override
  Future<AuthEntity?> get(String email, String password) async {
    _shared = await SharedPreferences.getInstance();
    var entity = _shared.getString('auth');
    if (entity != null && entity != '') {
      return SharedAuthDTO.fromJson(entity);
    } else {
      return null;
    }
  }

  @override
  Future<void> add(String path, data) async {
    _shared = await SharedPreferences.getInstance();
    try {
      _shared.setString(path, SharedAuthDTO.toJson(data));
    } catch (e) {
      throw Exception("Erro ao salvar auth: $e");
    }
  }

  @override
  Future<void> delete(path) async {
    _shared = await SharedPreferences.getInstance();
    _shared.setString(path, '');
  }
}