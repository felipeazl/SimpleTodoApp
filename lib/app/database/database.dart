import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //Referencia nossa caixa do hive
  final _myBox = Hive.box("mybox");

  //Primeira ver que o aplicativo for aberto em novo smartphone
  createInitialData() {
    toDoList = [
      ["Example 1", false],
      ["Example 2", false],
    ];
  }

  //Carregar dados
  loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //Atualizar dados
  updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
