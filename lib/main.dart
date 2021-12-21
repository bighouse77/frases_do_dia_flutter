// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/*
  Stateless -> Widgets que não podem ser alterados (constantes)
  Stateful  -> Widgets que podem ser alterados (variáveis)
*/

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeStateful(),
  ));
}

class HomeStateful extends StatefulWidget {
  const HomeStateful({Key? key}) : super(key: key);

  @override
  _HomeStatefulState createState() => _HomeStatefulState();
  /* 
    '=>' é o mesmo que return. Exemplo:

      _HomeStatefulState createState() {
        return _HomeStatefulState();
      }
  */
}

class _HomeStatefulState extends State<HomeStateful> {
  var _texto = "Maurício Casagrande";

  @override
  Widget build(BuildContext context) {
    print("Build chamado");
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _texto = "Curso Flutter";
                });
              },
              child: Text("Clique aqui"),
              color: Colors.amber,
            ),
            Text("Nome: $_texto")
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Conteúdo Principal"),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("texto 1"),
              Text("texto 1"),
            ],
          ),
        ),
      ),
    );
  }
}
