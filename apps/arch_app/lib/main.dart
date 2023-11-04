import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:mvc_module/mvc_module.dart';
import 'package:mvp_module/mvp_module.dart';
import 'package:mvvm_module/mvvm_module.dart';

Future<void> main() async {
  await HiveAuthDatasource.init();
  return runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(AppModule.mvpRoute);
    return MaterialApp.router(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}

class AppModule extends Module {
  static const String initialRoute = '/';
  static const String mvvmRoute = '/mvvm/';
  static const String mvcRoute = '/mvc/';
  static const String mvpRoute = '/mvp/';

  @override
  void routes(r) {
    r.module(initialRoute, module: MVPModule());
    r.module(mvpRoute, module: MVPModule());
    r.module(mvvmRoute, module: MVVMModule());
    r.module(mvcRoute, module: MVCModule());
  }
}
