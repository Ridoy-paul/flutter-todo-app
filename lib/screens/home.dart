import 'package:flutter/material.dart';
import '../constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // title: Text("Awesome ToDo List"),
      foregroundColor: tdBlack,
      centerTitle: true,
      backgroundColor: tdBGColor,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {
          print("clicked menu");
        },
        child: Icon(Icons.menu),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(300),
            child: Image.asset("asset/images/profile.jpeg"),
          ),
        )
      ],
    );
  }
}
