import 'package:flutter/material.dart';
import 'package:flutter_todo_getx/controllers/todos_controllers.dart';
import 'package:flutter_todo_getx/views/widgets/todos_listview.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final TodosController todosController = Get.put(TodosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            autofocus: true,
            focusNode: todosController.todoInputFocusNode,
            controller: todosController.todoInputController,
            onSubmitted: (String value) => todosController.addTodo(),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => todosController.addTodo(),
          ),
          Obx(todosListView),
        ],
      ),
    );
  }
}
