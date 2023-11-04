import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class LoginViewModel {
  LoginViewModel({required IAuthUseCase useCase}) : _useCase = useCase;

  final IAuthUseCase _useCase;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _emailKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  GlobalKey get emailKey => _emailKey;
  GlobalKey get passwordKey => _passwordKey;

  Future logIn() async {
    AuthModel? credentials = await _useCase.get(emailController.text, passwordController.text);
    if (credentials != null) {
      Modular.to.pushNamed('/home');
      return '';
    } else {
      return 'login inválido';
    }
  }

  logout() {
    _useCase.delete('auth');
    Modular.to.pop();
  }

  toCreateAccount() {
    Modular.to.navigate('/create-account');
  }

  Future createAccount() async {
    _useCase.add('auth',AuthModel(email: emailController.text, password: passwordController.text));
    Future.delayed(const Duration(microseconds: 300), () {
      Modular.to.navigate('/login');
    });
  }
}
