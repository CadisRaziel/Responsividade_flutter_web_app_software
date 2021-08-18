import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:nome_projeto/03_conceitos_avancados/instrinsic_width.dart';
// import 'package:nome_projeto/Page/media_query.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //? Esse builder e locale eu uso para o DevicePreview
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: InstrinsicLargura(),
    );
  }
}