import 'package:flutter/material.dart';

class Alignimenti extends StatefulWidget {
  const Alignimenti({ Key? key }) : super(key: key);

  @override
  _AlignimentiState createState() => _AlignimentiState();
}
//? Com o Alignment podemos especificar metricamente aonde queremos posicionar o widget
//? ele é igual o Align porém é nós quem defini aonde ele vai ficar com os eixos (x,y)
//! Eixo Y -> cresce para baixo (aceita negativo para ir para cima)
//! Eixo X -> cresce para a direita (aceita negativo para ir para esquerda)
class _AlignimentiState extends State<Alignimenti> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //? Aqui vamos usar o Align porém utilizand o alignment
        //! para telas diferentes, ele ainda sim mantem as mesmas proporções
        //* Esse é o melhor para se utilizar em casos mais especificos
        Align(
          alignment: Alignment(-0.75, -0.75),
          child: Container(color: Colors.blue, height: 100,),
        ),
        Align(
          alignment: Alignment(0, 0),
          child: Container(color: Colors.amber, height: 100,),
        ),
        Align(
          alignment: Alignment(0.75, 0.75),
          child: Container(color: Colors.green, height: 100,),
        ),
      ],
    );
  }
}

/*
Container(
  alignment: Alignment.center,
  child: Text('vamos centralizar com o Alignment');
)
 */