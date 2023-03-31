import 'package:flutter/material.dart';

import 'cadastro.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: ElevatedButton(
        child: const Text("Ir para Cadastro"),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Cadastro());
          Navigator.pushReplacement(context, rota);
        },
      ),
    );
  }
}
