import '../../../core_module.dart';

abstract class IAuthRepository {
  Future<HiveAuthDTO?> get(String email, String password);
  Future<void> add(String id, data);
  Future<void> delete(String id);
}