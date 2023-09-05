import 'package:core_module/core_module.dart';
import 'package:mvvm_module/src/ui/view_models/login_view_model.dart';

import 'ui/views/create_account_view.dart';
import 'ui/views/home.dart';
import 'ui/views/login_view.dart';

class MVVMModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {
    i.add(LoginViewModel.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginView());
    r.child('/login', child: (context) => const LoginView());
    r.child('/create-account', child: (context) => const CreateAccountView());
    r.child('/home', child: (context) => const Home());
  }
}
