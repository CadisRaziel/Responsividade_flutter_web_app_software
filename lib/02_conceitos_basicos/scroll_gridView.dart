import 'package:flutter/material.dart';

class ScrollGridView extends StatefulWidget {
  const ScrollGridView({Key? key}) : super(key: key);

  @override
  _ScrollGridViewState createState() => _ScrollGridViewState();
}

class _ScrollGridViewState extends State<ScrollGridView> {
  @override
  Widget build(BuildContext context) {
    final orientation2 = MediaQuery.of(context).orientation;
    return GridView.count(
      crossAxisCount: orientation2 == Orientation.portrait ? 2 : 4,
      children: [Container(), Container(), Container()],
    );
  }
}


/*
  GridView.extent(
    **maxCrossAxisExtent -> tamanho maximo que o widget pode ter ele usa o width e height no mesmo atributo
    **caso for uma tela maior e tiver espaço sobrando ele vai preencher com os widgets
    maxCrossAxisExtent: 200,
    children: [
      Container(), Container(),
      Container(), Container()
    ]
  )
*/