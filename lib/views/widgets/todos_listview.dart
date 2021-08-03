import 'package:flutter/material.dart';
import 'package:flutter_todo_getx/controllers/todos_controllers.dart';
import 'package:get/get.dart';

Obx todosListView() {
  final TodosController todosController = Get.find();
  return Obx(() {
    return ListView.builder(
      itemCount: todosController.todos.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            leading: IconButton(
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
            title: Text(todosController.todos[index]['todo']),
            trailing: IconButton(
              icon: Icon(Icons.delete_forever, color: Colors.red),
              onPressed: () => todosController.removeTodo(index),
            ),
          ),
        );
      },
    );
  });
}
