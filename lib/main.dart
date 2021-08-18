import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/app.widget.dart';

//*Obs importante
//? no flutter sempre usamos Pixels lógicos
//? exemplo quando eu coloco um padding com 16 são 16 pixels logicos
//? outro exemplo um container com tamanho 40 são 40 pixels logicos
//? resumindo o flutter utiliza sempre pixels logicos

void main() {
  //? Para podermos ver a tela responsiva em mais de uma tela de celular,
  //? instalanmos a dependencia device_preview
  //? depois de instalada precisamos colocar o DevicePreview no runApp
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
      //?para ativar e desativar o device preview
      enabled: true,
    ),
  );
}
