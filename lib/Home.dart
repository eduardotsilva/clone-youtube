
import 'package:flutter/material.dart';
import 'package:youtube/telas/Biblioteca.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/Inscricao.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Inscricao(),
      Biblioteca(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          "imagens/youtube.png",
          width: 100,
          height: 50,
        ),
        iconTheme: IconThemeData(color: Colors.grey),
        actions: [
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {
                print("Video cam Ação");
              }),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("Search  Ação");
              }),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                print("Account Ação");
              })
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _indiceAtual,
          onTap: (indice) {
            setState(() {
              _indiceAtual = indice;
            });
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Início")),
            BottomNavigationBarItem(
                icon: Icon(Icons.whatshot), title: Text("Em Alta")),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), title: Text("Inscrições")),
            BottomNavigationBarItem(
                icon: Icon(Icons.folder), title: Text("Biblioteca"))
          ]),
    );
  }
}
