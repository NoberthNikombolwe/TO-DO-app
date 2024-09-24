import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this metgod if is the first time ever Opening this app

  void createInitialData() {
    toDoList = [
      ["Make Audio", true],
      ["Make video", false],
      ["Make Movies", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the databse
  void updateDatabase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
