import 'package:flutter/material.dart';

class TamahosProporcionais extends StatefulWidget {
  const TamahosProporcionais({ Key? key }) : super(key: key);

  @override
  _TamahosProporcionaisState createState() => _TamahosProporcionaisState();
}

//*FractionallySizedBox -> conseguimos definir as dimensoes do widget filho basiado nas dimensoes em porcentagem do widget pai
//* è uma alternativa ao MediaQuery

class _TamahosProporcionaisState extends State<TamahosProporcionais> {
  @override
  Widget build(BuildContext context) {
    //? para utilizarmos o FractionallySizedBox no projeto ele precisa ter uma constraint tipo 'loose'
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(color: Colors.blue, height: 200, width: 200,),
        //! lembre-se para usar ele em uma Column precisamos coloca-lo dentro do Flexible
        Flexible(
          child: FractionallySizedBox(
            //*Vamos dar um espaço entre eles ao equivalente a 20% da altura da tela
            heightFactor: 0.2,
          )
        ),
        Container(
          color: Colors.green,  height: 200, width: 200,
        )
      ],
    );
  }
}
/*
  FractionallySizedBox(
      widthFactor: 0.5,
      heightFactor: 0.5,
      alignment: Alignment.bottomCenter,
      child: Container(
        color: Colors.blue,
      ),
    );
 */