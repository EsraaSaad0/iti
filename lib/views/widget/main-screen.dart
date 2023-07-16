import 'package:flutter/material.dart';
import 'package:libararyy/Models/todo-model.dart';
import 'package:libararyy/services/todo-service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<TodoModel> todoList = [];
  getTodo() async {
    todoList = await TodoSercive().getTodoData();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getTodo();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (BuildContext context, index) {
          return ListTile(
            title: Text(todoList[index].completed.toString()) ,
            subtitle: Text(todoList[index].title?? "--"),

          
          
          );
        });

    /*Scaffold(
      
      body:SingleChildScrollView(
        child: Container(
          width: 500,
          height: 850,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/book.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            child: Column(children: [
              

               SizedBox(
                  height: 50,
                ),
              Text(
               "Home ",
                style: const TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
              ),
              ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (BuildContext context, index) {
        return Text(todoList[index].completed.toString() );
           }
            ),

              
            ]),
          ),
        ),
      ),

    );
    */
  }
}
