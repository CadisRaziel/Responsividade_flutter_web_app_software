import 'package:flutter/material.dart';

class Constrainti extends StatefulWidget {
  const Constrainti({Key? key}) : super(key: key);

  @override
  _ConstraintiState createState() => _ConstraintiState();
}

class _ConstraintiState extends State<Constrainti> {
  @override
  Widget build(BuildContext context) {
    //! Repare nessse exemplo, o widget Center vai limitar o tamnho colocado pelo ContraintnedBox
    //! Ou seja, o  widget que tiver altura e largura e nao ser o ConstrainedBox sera ignorado as dimensões
    //! e só sera respeitada as dimensoes do ConstrainedBox
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: 150,
          maxWidth: 150,
          minHeight: 70,
          minWidth: 70,
        ),
        child: Container(
          color: Colors.green,
          //? O container esta tentando ter 1000 de largura e altura, porém limitamos no BoxConstraints uma altura e largura minima e maxima
          //? Agora esse container ignora suas dimensoes e passa a respeitar a altura e largura do BoxConstraints
          //*O valor desse container só sera consideraro se ele tiver dentro das dimensoes que eu coloquei no BoxConstraints
          //*Ou seja se no BoxConstraints tiver min 800 e max 1500, ele passa a ser respeitado com seu tamanho e largura de 1000x1000
          width: 1000,
          height: 1000,
        ),
      ),
    );
  }
}
//------------------------------------------------------------------------------------------------------------------------------------------

//* Constraints vao para o filho -> o que isso significa? a constraint vai falar para os filhos qual tamanho minimo e maximo que ele pode ter
//* O tamanho vai para o pai -> o que isso significa? o filho vai passar o tamanho que ele definiu para o pai
//* o pai escolhe a posição -> o que isso significa? o pai escolhe a posição que quer colocar o filho, se ele tinha 300x300 e ele quer ser 150x150
//* o pai vai escolher a posição que ele vai ficar

//------------------------------------------------------------------------------------------------------------------------------------------

//! O Widget não pode ter o tamanho que quiser, ele vai respeitar as contraints 
//! O widget não sabe e não decide sua posição na tela
//! è impossivel saber o tamanho e posição de um Widet sem olhar a arvore como um todo

//------------------------------------------------------------------------------------------------------------------------------------------

//* UnconstrainedBox -> vai permitir que o widget pode ter o tamanho que ele quiser, porém que caiba na tela
//* caso contrario vai dar overflow
/*
  UnconstrainedBox(
    child: Container(
      color: Colors.green,
      width: 20,
      height: 20
    )
  )
*/

//*UnconstrainedBox com LimitedBox
//*LimitedBox -> se por acaso o UnconstrainedBox der para o widget uma dimensão infinity igual colocamos ali, sem o Limited ele não iria renderizar nada
//* porém com o LimitedBox ele vai ler a dimensão infinity e não vai deixar e vai fazer o container respeitar a dimensão do LimitedBox 
//* que eu coloqueo como maxWidth: 100
/*
  UnconstrainedBox(
   child: LimitedBox(
     maxWidth: 100,
      child: Container(
      color: Colors.green,
      width: double.infinity,
      height: 100
    )
   )
  )
*/

//------------------------------------------------------------------------------------------------------------------------------------------

//*OverFlowBox -> repare que a largura vai dar overflow, porém com esse widget 'OverFlowBox' impede que de overflow,
//* isso porque ele vai colocar o que der para renderizar na tela, e o restante nao vai usar, vai ficar pra fora da tela
/*
  OverFlowBox(
    maxHeight: double.infinity,
    maxWidth: double.infinity,
    minHeight: 0.0,
    minWidth: 0.0,
    child: Container(
      color: Colors.green,
      width: 4000,
      height: 5
    )
  )
 */

//------------------------------------------------------------------------------------------------------------------------------------------

//!FittedBox -> não se pode utilizar com double.infinity !!
//*FittedBox -> vai forçar o FittedBox a ter exetamente as dimensoes da tela
//* Exemplo se for muitas palavras 'oi' ele vai diminuir elas ao extremo para caber na linha da tela
//* se for um 'oi' gigantesco ele vai diminuir ele um pouco para ele ficar do tamanho da largura da tela
/*
  FittedBox(
    child: Text('oi')
  ),
 */

//*FittedBox -> se eu colcoar o FittedBox dentro de um center, o center passa a ocupar toda largura da tela
//* e ele fala para o FittedBox que ele pode ter altura e largura que quiser, mais que nao ultrapasse a altura e largura da tela
/*
Center(
  child: FittedBox(
    child: Text('oi')
  ),
)
 */

//------------------------------------------------------------------------------------------------------------------------------------------


//*Scaffold tem a dimensão do tamanho maximo da tela
//! UnconstrainedBox são row e column
//! Cuidado com rows e columns pois os widgets filho é quem vai definir altura e largura e nao a row e column
//! quando trabalhar com rows e columns sempre utilize alguns dos widget desse curso para tratar as responsividades


//------------------------------------------------------------------------------------------------------------------------------------------


//*tight -> vai obrigar os widgets filhos a respeitarem a altura e largura definida como no exemplo abaixo
/*
  BoxConstarints.tight(Size size) : 
    minWidth = size.width,
    maxWidth = size.width,
    minHeight = size.heigth,
    maxHeight = size.heigth
*/  

//*loose -> Nos obrigamos o filho a ter um tamanho MAXIMO definido e que seja da tela, e a largura ele pode definir qual ele quer ter
/*
  BoxConstarints.loose(Size size) : 
    minWidth = 0.0,
    maxWidth = size.width,
    minHeight = 0.0,
    maxHeight = size.heigth
*/  

//? cada widget utiliza tight e loose, exemplo o CENTER utiliza loose, e a TELA utiliza o tight