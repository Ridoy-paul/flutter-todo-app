import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ToDoItem extends StatelessWidget {
  ToDoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: ListTile(
          onTap: () {
            print("List Checked");
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          tileColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.symmetric(vertical: 8),
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: tdRed,
              borderRadius: BorderRadius.circular(5),
            ),
            child: IconButton(
              onPressed: () {
                print("delete Clicked");
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
