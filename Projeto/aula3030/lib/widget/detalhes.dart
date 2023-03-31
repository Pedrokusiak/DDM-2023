import 'package:flutter/material.dart';

import 'home.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detalhes")),
      body: ElevatedButton(
        child: const Text("Ir para Home"),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Home());
        },
      ),
    );
  }
}
