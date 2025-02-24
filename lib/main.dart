import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:todo_app/views/firspage.dart';
// import 'package:todo_app/views/todo_page.dart';

void main() {
  runApp(MyApp());
}

// #09b5aa      #141414

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: Firspage());
  }
}
