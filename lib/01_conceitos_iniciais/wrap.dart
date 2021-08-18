import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  const ResponsividadeWrap({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  _ResponsividadeWrapState createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {
    double altura = 100;
    double largura = 200;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        color: Colors.black26,
        width: MediaQuery.of(context).size.width,
        //*Usamos o Wrap quando sabemos que o container vai acabar quebrando o layout pelo tamanho,
        //*com isso o wrap vai fazer o container pular pra linha debaixo, como em uma frase
        child: Wrap(
          //* podemos utilizar esse dois alinhamentos, porém o mais produtivo no caso aqui é o alignment
          // crossAxisAlignment: WrapCrossAlignment.start,
          alignment: WrapAlignment.start,

          //*spacing coloca espaçamento entre os container criados(largura)
          spacing: 50,

          //*runSpacing coloca espaçamento entre os container criados(altura)
          runSpacing: 100,
          children: [
            Container(
              width: largura,
              height: altura,
              color: Colors.orange,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.amber,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.pink,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.purple,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.lightGreenAccent,
            ),
            Container(
              width: largura,
              height: altura,
              color: Colors.tealAccent,
            ),
          ],
        ),
      ),
    );
  }
}
