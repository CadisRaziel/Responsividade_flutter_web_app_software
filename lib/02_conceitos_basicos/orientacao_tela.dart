import 'package:flutter/material.dart';

class Orientacao extends StatefulWidget {
  const Orientacao({Key? key}) : super(key: key);

  @override
  _OrientacaoState createState() => _OrientacaoState();
}
//? Para que o app funcione tanto na vertical quando na horizontal
//? utilizamos o OrientationBuilder para que ele fique observando a orientação da tela e modifique conforme a tela ficar em pé e deitada

class _OrientacaoState extends State<Orientacao> {
  @override
  Widget build(BuildContext context) {
    //! Esse mediaQuery tambem faz o mesmo que o OrientationBuilder
    final orientation2 = MediaQuery.of(context).orientation;
    //? com isso eu retiraria o OrientationBuilder e deixaria somente o return utilizando esse final
    return OrientationBuilder(
      builder: (context, orientation) {
        return Container(
          child: orientation == Orientation.portrait
              ? Container(
                  color: Colors.amber,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                )
              : Container(
                  color: Colors.green,
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                ),
        );
      },
    );
  }
}
