import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 180, 179, 176),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Login",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                TextField(
                    autofocus: true,
                    obscureText: true,
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.blue, fontSize: 30),
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(color: Colors.black),
                    )),
                Divider(),
                ButtonTheme(
                  height: 60.0,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  child: Text(
                    "Entrar",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
