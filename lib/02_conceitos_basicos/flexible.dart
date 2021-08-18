import 'package:flutter/material.dart';

class Flexivel extends StatefulWidget {
  const Flexivel({ Key? key }) : super(key: key);

  @override
  _FlexivelState createState() => _FlexivelState();
}
//! o Flexible.loose considera o tamanho do filho, ou seja o 'height' dos widget dentro dele, e foca no 'loose'

class _FlexivelState extends State<Flexivel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          color: Colors.pink,
        ),
        Flexible(
          //*FlexFit.tight -> Faz o mesmo que o Expanded, nao muda nada
          //? pois o Expanded nada mais é um atalho para o Flexible para o modelo tipo 'tight' 
          // fit: FlexFit.tight,

          //*FlexFit.loose -> Ele considera o tamanho que o Container quer ter !!!
          //? Olha que interessante, se a tela tem 600 de altura, e utilizamos um widget container com 200 de altura, nos sobra 400
          //? porém se no container que tiver o FlexFit.loose tiver 500 de altura ele vai fazer o seguinte,
          //? ele vai esticar o maximo que pode, ou seja os 400 que sobrou e vai impedir que a tela de OVERFLOW porque ele nao tenta ultrapassa 
          //? o restante de tela que sobrou que é 400, mesmo tendo sido colocado como 500
          //! porem cuidado, pois se colocamos a altura do container 500, e tem 700 de tela disponivel, ele vai deixar 200 sobrando em 'preto'
          //! mais como é um 'loose' ele não vai dar overflow !!!
          fit: FlexFit.loose,
          child: Container(
            color: Colors.green,
            //*Ou seja o tamanho aqui é ignorado tambvem
            height: 500,
          )
        )
      ],
    ); 
  }
}