import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import '../views/home.dart';

class LoginController {
  LoginController({required this.useCase});

  final IAuthUseCase useCase;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _emailKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  GlobalKey get emailKey => _emailKey;
  GlobalKey get passwordKey => _passwordKey;

  Future logIn() async {
    HiveAuthDTO? credentials = await useCase.get(
      emailController.text,
      passwordController.text,
    );
    if (credentials != null) {
      Modular.to.navigate(
        '/home',
      );
      return '';
    } else {
      return 'login invalido';
    }
  }

  logout() {
    Modular.to.navigate('/login');
  }

  toCreateAccount() {
    Modular.to.navigate('/create-account');
  }
}
