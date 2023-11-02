import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';
import 'package:mvc_module/mvc_module.dart';
import 'package:mvp_module/mvp_module.dart';
import 'package:mvvm_module/mvvm_module.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([
    IsarAuthDatasource.isarInit(),
    //HiveAuthDatasource.hiveInit()
  ]);
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
    return MaterialApp.router(
      theme: lightTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: Modular.routerConfig,
    ); //added by extension
  }
}

class AppModule extends Module {
  @override
  void routes(r) {
    r.module('/', module: MVPModule());
  }
}
