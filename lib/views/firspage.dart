import 'package:flutter/material.dart';
import 'package:todo_app/app/color.dart';
import 'package:get/get.dart';
import 'package:todo_app/views/todo_page.dart';

class Firspage extends StatelessWidget {
  const Firspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.lightBlue, blue, darkBlue],
          ),
        ),

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Image.asset('images/one.png'),
                Text(
                  "Create Your To-Do",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),

                // Text(
                //   "To-Do",
                //   style: TextStyle(
                //     color: Colors.white,
                //     fontSize: 35,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
                SizedBox(height: 100),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 240,
                      height: 50,

                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                        ),
                        onPressed: () {
                          Get.to(TodoPage());
                        },
                        child: Text(
                          "Get Start",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
