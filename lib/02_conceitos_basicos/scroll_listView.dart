import 'package:flutter/material.dart';

class ScrollListView extends StatefulWidget {
  const ScrollListView({ Key? key }) : super(key: key);

  @override
  _ScrollListViewState createState() => _ScrollListViewState();
}
//? ListView -> adiciona um scroll que vai para cima ou para baixo

class _ScrollListViewState extends State<ScrollListView> {
  @override
  Widget build(BuildContext context) {
//! Podemos tambem utilizar o SingleChildScrollView() no lugar da ListView(), ambos tem o mesmo efeito !!
    return ListView(
      children: [
        //* Não vai deixar dar overflow pois vai colocar um scroll  
        Container(color: Colors.black, height: 100,),
        Container(color: Colors.amber, height: 100,),
        Container(color: Colors.green, height: 100,),
        Container(color: Colors.pink, height: 100,),
        Container(color: Colors.purple, height: 100,),
        Container(color: Colors.brown, height: 100,),
        Container(color: Colors.blue, height: 100,),
        Container(color: Colors.grey, height: 100,),
        Container(color: Colors.yellow, height: 100,),

        //! Outro problema classico, o teclado virtual do celular dar overflow
        //? para evitarmos isso podemos utilizar tambem a listView
        TextFormField() 
      ],
    );
  }
}
