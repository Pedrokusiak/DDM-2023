import 'package:flutter/material.dart';

import 'lista.dart';

class Cadastro extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: ElevatedButton(
        child: const Text("Ir para Lista"),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Lista());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}