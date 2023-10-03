import 'package:flutter/material.dart';
import '../constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Awesome ToDo List"),
        foregroundColor: tdBlack,
        centerTitle: true,
        backgroundColor: tdBGColor,
        elevation: 0.0,
        leading: GestureDetector(
            onTap: () {
              print("clicked menu");
            },
            child: Icon(Icons.menu)),
      ),
    );
  }
}
