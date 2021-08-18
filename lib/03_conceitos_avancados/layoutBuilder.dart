import 'package:flutter/material.dart';

class LayoutBilder extends StatefulWidget {
  const LayoutBilder({ Key? key }) : super(key: key);

  @override
  _LayoutBilderState createState() => _LayoutBilderState();
}

class _LayoutBilderState extends State<LayoutBilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        //? é util para determina se o espaço da tela pode mostrar todos os widgets ou não
        builder: (context, constraint){
          // constraint.maxHeight;
          // constraint.minHeight;
          // constraint.maxWidth;
          // constraint.minWidth;
          //*Podemos colocar endpoints de telas com if e else !!!
          if(constraint.maxWidth <= 500){
            return Container(
              color: Colors.red,
            );
          }else {
            return Container(
              color: Colors.blue,
            );
          }
        },
      ),
    );
  }
}