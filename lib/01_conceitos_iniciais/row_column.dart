import 'package:flutter/material.dart';

class ResponsividadeRowColumn extends StatefulWidget {
  const ResponsividadeRowColumn({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _ResponsividadeRowColumnState createState() =>
      _ResponsividadeRowColumnState();
}

class _ResponsividadeRowColumnState extends State<ResponsividadeRowColumn> {
  @override
  Widget build(BuildContext context) {
    //*lembrando que 2 container podemos dividir/multiplicar por 2 (50%), se for 3 container precisamos dividir / 3 e assim vai....

    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 0,
        ),
        body: Column(
          children: [
            //*Com o expanded ele fica totalmente responsivo, sem a necessiade do mediaquery
            //* o melhor dele é que nao precisamos calcular o AppBar e o StatusBar
            Expanded(
              //*flex seria a divisão por 2 ou 3, como no mediaquery, porém ao invez de fazer * 0.50 ou / 2 a gente por 1, 2, 3
              //* ou posso utilizar 'flex: 20' que seria 20%, 'flex: 50' que seria 50%
              // flex: 1
              flex: 1, 
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.amber,
                //*Posso tambem usar Expanded dentro de outros Expanded
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
              ),
            ),
          ],
        ));
  }
}
