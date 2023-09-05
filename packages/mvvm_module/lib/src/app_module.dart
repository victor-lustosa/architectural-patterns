import 'package:core_module/core_module.dart';

import 'ui/views/login_view.dart';

class TableModule extends Module {
  @override
  void exportedBinds(i) {
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginView());
  }
}
