
import '../../../core_module.dart';

abstract class IAuthUseCase {
  Future get(String email, String password);
  Future add(String path, HiveAuthDTO data);
  Future delete(String email);
}