import 'package:flutter/material.dart';

import 'detalhes.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Aula Base")),
      body: ElevatedButton(
        child: const Text("Ir para Detalhes"),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Detalhes());
        },
      ),
    );
  }
}
