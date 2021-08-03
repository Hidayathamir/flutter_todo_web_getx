import 'package:flutter/material.dart';
import 'package:flutter_todo_getx/controllers/todos_controllers.dart';
import 'package:flutter_todo_getx/views/widgets/todos_add_iconbutton.dart';
import 'package:flutter_todo_getx/views/widgets/todos_input_textfield.dart';
import 'package:flutter_todo_getx/views/widgets/todos_listview.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  final TodosController todosController = Get.put(TodosController());

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.red, Colors.blue]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: 600,
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ~ add todo
                Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // ! textfield input todo
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 10,
                          ),
                          child: todosInputTextField(),
                        ),
                      ),
                      // ! iconbutton add todo
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: Tooltip(
                          message: 'Add Todo',
                          child: todosAddIconButton(),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                // ~ todo listview
                Expanded(
                  child: Container(
                    height: 500,
                    child: todosListView(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
