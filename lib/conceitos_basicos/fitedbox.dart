import 'package:flutter/material.dart';

class FitediBox extends StatefulWidget {
  const FitediBox({ Key? key }) : super(key: key);

  @override
  _FitediBoxState createState() => _FitediBoxState();
}
//? FittedBox -> 

class _FitediBoxState extends State<FitediBox> {
  @override
  Widget build(BuildContext context) {
    //! Porém só de colocar o FitttedBox ele ja faz com que a imagem se adeque ao espaço que ela tem
    //*è mais utilizando em imagens
    return FittedBox(
      //? modifica as dimenções da imagem para que ela caiba dentro do nosso widget
      fit: BoxFit.contain,
      child: Container(),
    );
  }
}