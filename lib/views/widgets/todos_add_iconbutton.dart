import 'package:flutter/material.dart';
import 'package:flutter_todo_getx/controllers/todos_controllers.dart';
import 'package:get/get.dart';

IconButton todosAddIconButton() {
  final TodosController todosController = Get.find();

  return IconButton(
    color: Colors.blue,
    onPressed: () => todosController.addTodo(),
    icon: Icon(Icons.send),
  );
}
