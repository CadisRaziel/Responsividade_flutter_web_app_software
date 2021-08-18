import 'package:flutter/material.dart';

class Expand extends StatefulWidget {
  const Expand({Key? key}) : super(key: key);

  @override
  _ExpandState createState() => _ExpandState();
}
//! Expanded ignora o tamanho do filho, ou seja o 'height' dos widget dentro dele, e foca no flex

//*Flex dentro do Expanded define proporções
//? Flex: 1 -> 1 terço
//? Flex: 2 -> 2 terços (quanto mais aumentando o flex, maior o espaço que ele vai pegar da tela)
//? ... e assim vai
//*Ele se adequa da mesma forma para todo tipo de tela 

/* Um exemplo de tela de login
Column(
  children:[
    Expanded(
      ****para a imagem superior
      flex: 1,
      child: LogoImage(),
    ),
    ****para os textfields nome, email etc...
    Expanded(
      flex: 2,
      child: TextFields(),
    ),
    ****para espaçamento na parte debaixo
    Expanded(
      flex: 1,
      child: FooterSpaces(),
    ),
  ]
)
*/

class _ExpandState extends State<Expand> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
        centerTitle: true,
        elevation: 0,
      ),
      //*Vale para a row tambem !!
      body: Column(
        children: [
            Container(
              height: 200,
              color: Colors.pink,
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                //?quando colocamos altura ou largura em um widget que esta dentro do expanded elas são ignoradas...
                // height: 500,
                // width: 500,
              )
            )
        ],
      ),
    );
  }
}

//?Expanded vai tentar expandir o máximo que ele conseguir