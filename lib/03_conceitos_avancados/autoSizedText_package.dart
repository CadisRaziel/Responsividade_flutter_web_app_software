import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AutoSize extends StatefulWidget {
  const AutoSize({ Key? key }) : super(key: key);

  @override
  _AutoSizeState createState() => _AutoSizeState();
}

class _AutoSizeState extends State<AutoSize> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoSizeText(
        //? AutoSizeText -> repare que definimos 4 linhas, se o texto abaixo estiver em um container e passar de 2 linhas
        //? o texto vai diminuindo para ficar somente em 4 linhas!!
        //? e utilizamos o minFontSize pois como ele vai diminuindo a fonte tambem dinimui, e o minimo sera 18 e qaundo chegar a 18
        //? ele vai aplicar o overflow e vai colocar 3 pontinhos no final da frase ...
        'Estamos utilizando um package chamado Auto Sized Text, para ajudar a deixar os textos responsivos',
        style: TextStyle(fontSize: 30),
        minFontSize: 18,
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
        //*stepGranularity -> vai diminuir de 10 em 10, ou seja começa em 30, vai pra 20, vai pra 10.. (precisamos especificar o minFontSize como 10)
        // stepGranularity: 10,
        //*presetFontSizes -> tamanhos especificos, estamos dizendo que queremos uma fonte que vai de 40 pra 20 e de 20 para 10
        //*se nao couber com 40 ele tenta com 20, se nao couber com 20 ele tenta com 10
        // presetFontSizes: [40,20,10],
      ),
    );
  }
}

//*Caso queremos exibir um texto no lugar como sinal de aviso ou se for muito longo etc...
//* colocamos o overFlowReplacement
/*
  AutoSizeText(
    'um texto longo para exibir sem overflow',
    maxLines: 1,
    overFlowReplacement: Text(
      'desculpe, seu exto é muito longo'
    )
  )
 */