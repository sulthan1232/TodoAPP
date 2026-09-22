import 'package:flutter/material.dart';
import 'package:todo_app/app/color.dart';
import 'package:todo_app/controller/todo_controller.dart';
import 'package:get/get.dart';

class TodoPage extends StatelessWidget {
  final TodoController todoController = Get.put(TodoController());
  TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do App",
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: blue,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: blue,
        child: Icon(Icons.add, color: lightblacks),
        onPressed: () {
          todoController.addTodo(todoController.todotextController.text);
          todoController.todotextController.clear();
        },
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            colors: [Colors.lightBlue, blue, darkBlue],
          ),
        ),

        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: todoController.todotextController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.yellow,
                            width: 2.9,
                          ),
                          borderRadius: BorderRadius.circular(5),
                          gapPadding: 10.0,
                        ),

                        labelText: "Enter",
                        labelStyle: TextStyle(color: lightblacks, fontSize: 20),

                        // hintText: "555",
                        // hintStyle: TextStyle(color: Colors.amberAccent),
                        // hintStyle: TextStyle(color: Colors.amber),
                      ),
                    ),
                  ),
                ],
              ),
              //List Details
              Expanded(
                child: Obx(
                  () => ListView.builder(
                    itemCount: todoController.todos.length,
                    itemBuilder: (context, index) {
                      final todos = todoController.todos[index];
                      return Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: lighgrey,
                          ),

                          child: ListTile(
                            title: Text(
                              todos.title,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                                decoration:
                                    todos.isDone
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none,
                              ),
                            ),
                            leading: Checkbox(
                              value: todos.isDone,
                              onChanged: (value) {
                                todoController.toggletodo(index);
                              },
                            ),
                            trailing: IconButton(
                              color: blue,
                              onPressed: () {
                                todoController.removeIn(index);
                              },
                              icon: Icon(Icons.delete),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              //
              //
            ],
          ),
        ),
      ),
    );
  }
}
