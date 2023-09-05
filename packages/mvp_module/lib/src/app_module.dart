import 'package:core_module/core_module.dart';

import 'ui/presenters/create_account_presenter.dart';
import 'ui/presenters/login_presenter.dart';
import 'ui/views/create_account_view.dart';
import 'ui/views/home.dart';
import 'ui/views/login_view.dart';

class MVPModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void binds(i) {
    i.add(CreateAccountPresenter.new);
    i.add(LoginPresenter.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginView());
    r.child('/login', child: (context) => const LoginView());
    r.child('/create-account', child: (context) => const CreateAccountView());
    r.child('/home', child: (context) => const Home());
  }
}
