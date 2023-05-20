import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app/app.dart';

void main() async {
  //Iniciar o HIVE
  await Hive.initFlutter();

  //Abrir a caixa do hive
  var box = await Hive.openBox("mybox");

  runApp(const App());
}
