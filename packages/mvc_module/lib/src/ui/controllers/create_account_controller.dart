import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

class CreateAccountController {
  CreateAccountController({required IAuthUseCase useCase}) : _useCase = useCase;

  final IAuthUseCase _useCase;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _emailKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();

  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;

  GlobalKey get emailKey => _emailKey;
  GlobalKey get passwordKey => _passwordKey;

  Future createAccount() async {
    _useCase.add(HiveAuthDTO(
      email: emailController.text,
      password: passwordController.text,
    ));
    Future.delayed(const Duration(microseconds: 300), () {
      Modular.to.navigate('/login');
    });
  }
}
