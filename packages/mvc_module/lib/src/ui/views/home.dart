import 'package:core_module/core_module.dart';
import 'package:flutter/material.dart';

import '../controllers/login_controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('Bem Vindo a Igreja Presbiteriana de Palmas'),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(
                top: 200,
                bottom: 24,
              ),
              height: 30,
              width: 150,
              child: ButtonWidget(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                action: Modular.get<LoginController>().logout,
                backgroundColor: AppColors.warning,
                shadowColor: AppColors.grey0,
                foregroundColor: AppColors.white,
                child: const Text(
                  "sair",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
