import 'package:core_module/core_module.dart';
import 'package:mvc_module/src/ui/controllers/create_account_controller.dart';
import 'package:mvc_module/src/ui/controllers/login_controller.dart';
import 'package:mvc_module/src/ui/views/create_account_view.dart';

import 'ui/views/home.dart';
import 'ui/views/login_view.dart';

class MVCModule extends Module {

  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {
    i.add(CreateAccountController.new);
    i.add(LoginController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginView());
    r.child('/login', child: (context) => const LoginView());
    r.child('/create-account', child: (context) => const CreateAccountView());
    r.child('/home', child: (context) => const Home());
  }
}
