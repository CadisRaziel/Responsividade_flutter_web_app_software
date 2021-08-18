import 'package:flutter/material.dart';

class InstrinsicAltura extends StatefulWidget {
  const InstrinsicAltura({ Key? key }) : super(key: key);

  @override
  _InstrinsicAlturaState createState() => _InstrinsicAlturaState();
}

//*IntrinsicHeight -> vai pegar o maior widget da Row, e vai definir a altura da Row do tamanho dele,
//* com isso os outros widgets terao a mesma altura

//? temos o InstrinsicWidth -> funciona da mesma forma

class _InstrinsicAlturaState extends State<InstrinsicAltura> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //*Basta envolvermos a Row em um 'IntrinsicHeight'
      //?agora com o IntrinsicHeight e o stretch, o stretch não vai pegar o tamanho da tela, e sim o tamanho do widget e deixar os dois iguais na altura
      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(color: Colors.red, height: 200, width: 200,),
            Container(color: Colors.amber, height: 500, width: 500,)
          ],
        ),
      ),
    );
  }
}

//* Imagine que temos uma row, e dentro dela temos dois widgets de tamahos diferentes e queremos deixar os dois do mesmo tamanho
//? podemos fazer dessa forma com o strech, porém ele vai pegar o tamanho da tela toda e nao queremos isso, queremos o tamanho do widget
//! para evitarmos isso e querer fazer algo de qualidade siga o exemplo acima /\ do código

/*
  Row(
    crossAxisAlignment: CrossAxisAlignment.strech,
    children: [
      Widget1(),
      Widget2()
    ]
  )
 */
