import 'package:flutter/material.dart';

class ResponsividadeRegrasLayout extends StatefulWidget {
  const ResponsividadeRegrasLayout({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  _ResponsividadeRegrasLayoutState createState() => _ResponsividadeRegrasLayoutState();
}

class _ResponsividadeRegrasLayoutState extends State<ResponsividadeRegrasLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.amber,
        //* com o layoutBuilder podemos gerenciar o que vai aparecer e sumir de acordo com a largura e altura da tela
        child: LayoutBuilder(
          //* o parametro constraint identifica aonde o LayoutBuilder esta
          //*porque isso? pois o LayoutBuilder pega a altura e largura do componente em que esta
          //* ou seja aqui ele esta dentro de um container, se eu tira o Mediaquery da altura e largura, ele vai ficar só o quadradinho do container
          builder: (context, constraint){
            var altura = constraint.maxHeight;
            var largura = constraint.maxWidth;
            
            if( largura < 600){ //*celular
              //logica
              //podemos exibir 4 colunas, exemplo
              return Text('celulares menores');
            }else if ( largura < 960){  //*celulares maiores e tablets
              //logica
              //podemos exibir 8 colunas, exemplo
              return Text('celulares maiores e tablets');
            } else { //* telas maiores que 960
              //logica
              //podemos exibir 12 colunas ou mais, exemplo
              return Text('telas de computador');
            }
          },
        ),
      ),
    );
  }
}