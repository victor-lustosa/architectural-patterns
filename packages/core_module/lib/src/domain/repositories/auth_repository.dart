
abstract class IAuthRepository {
  Future get(String email, String password);
  Future<void> add(String id, data);
  Future<void> delete(String id);
}