import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() => runApp(ToDoApp());

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDo Application.",
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
