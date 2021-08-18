import 'package:flutter/material.dart';

class ResponsividadeMedia extends StatefulWidget {
  const ResponsividadeMedia({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _ResponsividadeMediaState createState() => _ResponsividadeMediaState();
}

class _ResponsividadeMediaState extends State<ResponsividadeMedia> {
  @override
  Widget build(BuildContext context) {
    //* precisamos especificar o MediaQuery aqui em cima do 'Return' e abaixo do 'Widget' pois é um WIDGET
      var _altura = MediaQuery.of(context).size.height;
      var _largura = MediaQuery.of(context).size.width;

      //*a StatusBar ocupa um certo espaço, e para a aplicação não quebrar precisamos compensar isso fazendo isso abaixo  
      //*utilizado para o celular !!!! sempre coloque
      var _alturaBarraStatus = MediaQuery.of(context).padding.top;

      //*A AppBar ocupa um certo espaço, e para a aplicação não quebrar precisamos compensar isso fazendo isso abaixo  
      var _alturaAppBar = AppBar().preferredSize.height;
      
      //*aqui vamos deixar a largura em 50%, as duas maneiras abaixo funciona, só coloquei elas para teste (0.50 = 50%)
      var _larguraItemMult = _largura * 0.50 ;
      var _larguraItemDiv = _largura / 2 ;

      //*lembrando que 2 container podemos dividir/multiplicar por 2 (50%), se for 3 container precisamos dividir / 3 e assim vai....

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 0,
        ),
        body: Row(
          children: [
            Container(
              width: _larguraItemMult,
              height: _altura - _alturaBarraStatus - _alturaAppBar,
              color: Colors.red,
            ),
            Container(
              width: _larguraItemDiv,
              height: _altura - _alturaBarraStatus - _alturaAppBar,
              color: Colors.amber,
            ),
          ],
        ),
    );
  }
}