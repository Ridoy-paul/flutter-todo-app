import 'package:flutter/material.dart';
import '../widgets/todo_item.dart';
import '../constants/colors.dart';
import '../model/todo.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              searchBox(),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 30, bottom: 20),
                      child: const Text(
                        "All ToDos",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    for(ToDo todo in todoList)
                      ToDoItem(todo: todo,),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
            // contentPadding: EdgeInsets.all(4),
            prefixIcon: const Icon(
              Icons.search,
              color: tdBlack,
              size: 20,
            ),
            prefixIconConstraints: BoxConstraints(
              maxHeight: 20,
              minWidth: 30,
            ),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(
              color: tdGray,
            )),
      ),
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
