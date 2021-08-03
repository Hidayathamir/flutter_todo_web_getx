import 'package:flutter/material.dart';
import 'package:flutter_todo_getx/controllers/todos_controllers.dart';
import 'package:get/get.dart';

TextField todosInputTextField() {
  final TodosController todosController = Get.find();

  return TextField(
    focusNode: todosController.todoInputFocusNode,
    controller: todosController.todoInputController,
    decoration: InputDecoration(
      labelText: 'Add Your Todo',
      counterText: '',
      suffixIcon: Tooltip(
        message: 'Clear',
        child: IconButton(
          onPressed: todosController.todoInputController.clear,
          icon: Icon(Icons.clear),
        ),
      ),
    ),
    maxLength: 65,
    onSubmitted: (String value) => todosController.addTodo(),
  );
}
