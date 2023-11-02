
import '../core_module.dart';
import 'domain/repositories/auth_repository.dart';
import 'external/datasources/isar_auth_datasource.dart';
import 'infra/datasources/auth_datasource.dart';
import 'infra/repositories/auth_repository.dart';
import 'infra/use_cases/auth_use_case.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(i) {
   // i.addSingleton<IAuthDatasource>(HiveAuthDatasource.new);
    i.addSingleton<IAuthDatasource>(IsarAuthDatasource.new);
    i.addSingleton<IAuthRepository>(AuthRepository.new);
    i.addSingleton<IAuthUseCase>(AuthUseCase.new);
  }
}