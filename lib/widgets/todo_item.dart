import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListTile(
          onTap: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          leading: Icon(
            Icons.check_box,
            color: tdBlue,
          ),
          title: Text(
            "check Mail",
            style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: TextDecoration.lineThrough,
            ),
          ),
          trailing: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {

              },
              color: Colors.white,
              iconSize: 18,
              icon: Icon(Icons.delete),
            ),
          ),
        ),
      ),
    );
  }
}
