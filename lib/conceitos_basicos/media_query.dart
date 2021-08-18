import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsividade Flutter'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            //? width -> pega a largura e divide por 2(ou seja 50% da tela)
            //? height -> pega a altura e divide por 2(ou seja 50% da tela)
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 2,
          ),
          Container(
            //? vai centralizar um container no centro da tela
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.75,
          )
        ],
      ),
    );
  }
}


//*Tecnica basica de responsividade -> MediaQuery, nos da em Pixel lógicos
//? MediaQuery.of(context).size.height; -> nós da a altura em que o app estara disponivel
//? MediaQuery.of(context).size.width; -> nós da a largura da tela
//? MediaQuery.of(context).devicePixelRatio; 
//? MediaQuery.of(context).padding.top; -> da a dimensão do status bar(nessa area do top não vai ter nada do nosso app, area de segurança)
//*Resumindo com o MediaQuery eu consigo ter um controle de responsividade basico porem FUNCIONAL !!!!
//*Como ele pega as dimensoes de pixel logico, em toda tela tera a dimensão que eu definir no mediaQuery
