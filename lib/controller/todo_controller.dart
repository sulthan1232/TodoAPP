import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model/todo_model.dart';

class TodoController extends GetxController {
  var todos = <Todo>[].obs;
  TextEditingController todotextController = TextEditingController();
  //add
  void addTodo(String title) {
    if (title.isNotEmpty) {
      todos.add(Todo(title: title));
    }
  }

  //delete
  void removeIn(int index) {
    todos.removeAt(index);
  }

  //strike
  void toggletodo(int index) {
    todos[index].isDone = !todos[index].isDone;
    todos.refresh();
  }
}
