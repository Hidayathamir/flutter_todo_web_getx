import 'package:flutter/material.dart';
import 'package:flutter_todo_getx/controllers/todos_controllers.dart';
import 'package:get/get.dart';

Widget todosListView() {
  final TodosController todosController = Get.find();

  return Expanded(
    child: ListView.builder(
      itemCount: todosController.todos.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            IconButton(
              icon: Obx(() {
                return Icon(
                  Icons.check_circle,
                  color: todosController.todos[index]['done']
                      ? Colors.green
                      : Colors.grey,
                );
              }),
              onPressed: () => todosController.changeStatusTodo(index),
            ),
            Text(todosController.todos[index]['todo']),
            IconButton(
              onPressed: () => todosController.removeTodo(index),
              icon: Icon(Icons.delete_forever),
            ),
          ],
        );
      },
    ),
  );
}
