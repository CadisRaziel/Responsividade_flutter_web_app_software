import 'package:flutter/material.dart';

class Position extends StatefulWidget {
  const Position({ Key? key }) : super(key: key);

  @override
  _PositionState createState() => _PositionState();
}
//? Positioned -> especificamos de uma forma diferente do alignment, utilizando: right, bottom, top, left

class _PositionState extends State<Position> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      //? Esse codigo vai jogar o container para a parte debaixo do lado direito
      //? é bem parecido com o Alignment porém não utilizamos 'x - y'
      //! ele mantem as mesmas proporções assim como Align-Alignment para outras telas
      children: [
        Positioned(
          right: 25,
          bottom: 100,

          //*Olha que interessante com o Positioned podemos especificar a altura e largura do Widget filho
          height: 100,
          child: Container(color: Colors.amber),
        )
      ],
    );
  }
}