import 'package:flutter/material.dart';

class Aligni extends StatefulWidget {
  const Aligni({ Key? key }) : super(key: key);

  @override
  _AligniState createState() => _AligniState();
}
//? ele posiciona o Widget em algum canto que eu especificar
//! Ele não se importa se ta horizontal ou vertical
//! se eu definir 'topLeft' ele vai ficar no 'topLeft' mesmo girando a tela etc..


//? Com o Alignment podemos especificar metricamente aonde queremos posicionar o widget
//? ele é igual o Align porém é nós quem defini aonde ele vai ficar com os eixos (x,y)
//! Eixo Y -> cresce para baixo (aceita negativo para ir para cima)
//! Eixo X -> cresce para a direita (aceita negativo para ir para esquerda)

class _AligniState extends State<Aligni> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //? Aqui vamos usar o Align porém utilizand o alignment
        Align(
          alignment: Alignment.topCenter,
          child: Container(color: Colors.blue, height: 100,),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(color: Colors.blue, height: 100,),
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Container(color: Colors.blue, height: 100,),
        ),
      ],
    );
  }
}

