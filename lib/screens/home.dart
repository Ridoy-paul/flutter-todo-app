import 'package:flutter/material.dart';
import '../widgets/todo_item.dart';
import '../constants/colors.dart';
import '../model/todo.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final todoList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 15),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  searchBox(),
                  Container(
                    child: Expanded(
                      child: ListView(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 30, bottom: 20),
                            child: const Text(
                              "All ToDos",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          for (ToDo todo in todoList)
                            ToDoItem(
                              todo: todo,
                              onToDoChange: _handleToDoChange,
                              onDeletaItem: (){},
                            ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(
                          bottom: 10,
                          left: 5,
                          right: 5,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 10.0,
                              spreadRadius: 0.0,
                            )
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Add a new todo item',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10, right: 0, left: 3),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: tdBlue,
                          minimumSize: Size(50, 50),
                          elevation: 10

                        ),
                        child: Text(
                          '+',
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _handleToDoChange(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
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
