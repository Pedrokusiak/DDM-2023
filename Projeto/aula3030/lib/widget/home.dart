import 'package:flutter/material.dart';

import 'cadastro.dart';
import 'login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ElevatedButton(
        child: const Text("Ir para Cadastro"),
        onPressed: (){
          Route rota = MaterialPageRoute(builder: (context) => Cadastro()
          );
        },
      ),
    );
  }
}