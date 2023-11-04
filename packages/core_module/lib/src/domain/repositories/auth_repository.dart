
import '../entities/auth_entity.dart';

abstract class IAuthRepository {
  Future<AuthEntity?> get(String email, String password);
  Future<void> add(String id, data);
  Future<void> delete(String id);
}