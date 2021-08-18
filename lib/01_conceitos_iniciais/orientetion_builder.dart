import 'package:flutter/material.dart';

class ResponsividadeOrientationBuilder extends StatefulWidget {
  const ResponsividadeOrientationBuilder({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _ResponsividadeOrientationBuilderState createState() =>
      _ResponsividadeOrientationBuilderState();
}

class _ResponsividadeOrientationBuilderState
    extends State<ResponsividadeOrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        elevation: 0,
      ),
      //*OrientationBuilder -> fica monitorando se o celular esta em pé ou deitado, e com isso ele se redimensiona de acordo
      body: OrientationBuilder(
        builder: (context, orientation) {
          // return Container(
          //   //* portrait -> Em pé
          //   //* landScape -> Deitado
          //   //* repare que podemos utilizar um ternario pra faze essa logica
          //   child: orientation == Orientation.portrait
          //       ? Text('Em Pé')
          //       : Text('Deitado'),
          // );

          return GridView.count(
            //*crossAxisCount -> quantidade de itens a serem exibido lado a lado
            // crossAxisCount: 2,
            //* se for portrait exibe 2 colunas, e se for landscape exibe 3 coluna
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            children: [
              Container(color: Colors.red,),
              Container(color: Colors.yellow,),
              Container(color: Colors.orange),
              Container(color: Colors.green,),
              Container(color: Colors.blue,),
              Container(color: Colors.brown,),
            ],
            );
        },
      ),
    );
  }
}
