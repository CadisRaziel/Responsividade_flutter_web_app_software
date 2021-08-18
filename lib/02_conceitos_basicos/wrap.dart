import 'package:flutter/material.dart';

class Wrapi extends StatefulWidget {
  const Wrapi({ Key? key }) : super(key: key);

  @override
  _WrapiState createState() => _WrapiState();
}
//* Wrap -> quando o widget chegar a borda da tela, ele vai quebrar a linha e joga-lo para a linha debaixo porém no inicio dela
//* como se fosse uma frase
//* Ele serve para a horizontal !

class _WrapiState extends State<Wrapi> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      //? spacing, runSpacing -> eles são o padding do wrap

      //? spacing -> espaçamento horizontal entre os componentes (ou seja aqui seria entre os containers)
      spacing: 10,

      //? runSpacing -> espaçamento vertical entre os componentes (ou seja aqui seria entre os containers)
      runSpacing: 10,
      //*o Wrap vai fazer com que os widgets nao de overflow na tela ao chegar na borda dela, ele vai fazer els quebrar linha igual uma frase
      children: [
        Container(color: Colors.blue, height: 100,),
        Container(color: Colors.black, height: 100,),
        Container(color: Colors.green, height: 100,),
        Container(color: Colors.amber, height: 100,),
        Container(color: Colors.pink, height: 100,),
        Container(color: Colors.purple, height: 100,),
      ],
    );
  }
}

/*Exemplo na pratica
Imagine que temos 3 botões, no Ipad eles aparecem um ao lado do outro na mesma linha
Porém ao ir para o iphone ele vai quebrar a linha e 1 botão vai descer,
porém queremos que ele desça e não fique no inicio e sim no centro, então fazemos isso

  Wrap(
    **Alinhamento do botão ao fazer a quebra de linha
    alignment: WrapAlignment.center,
    spacing: 50,
    runSpacing: 10,
    children: [
      ElevatedButton(adicionar),
      ElevatedButton(remover),
      ***O editar vai quebrar a linha ao ir para tela do iphone, porém ele vai ser centralizado abaixo dos outros
      ElevatedButton(editar),
    ]
  )


*/