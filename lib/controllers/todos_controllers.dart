import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TodosController extends GetxController {
  // ~ state list all todo
  RxList<RxMap<String, dynamic>> todos = <RxMap<String, dynamic>>[
    {'todo': 'Eat fruit', 'done': true}.obs,
    {'todo': 'Exercise 30 M', 'done': true}.obs,
    {'todo': 'Learn program', 'done': false}.obs,
    {'todo': 'Learn language', 'done': false}.obs,
  ].obs;

  // ~ controller text field for input todo
  TextEditingController todoInputController = TextEditingController();
  FocusNode todoInputFocusNode = FocusNode();

  // ! method to add todo
  void addTodo() {
    todos.add({'todo': todoInputController.text, 'done': false}.obs);
    todoInputController.clear();
    todoInputFocusNode.requestFocus();
  }

  // ! method to remove todo
  void removeTodo(int index) => todos.removeAt(index);

  // ! method to change status todo
  void changeStatusTodo(int index) {
    todos[index]['done'] = !todos[index]['done'];
  }
}
