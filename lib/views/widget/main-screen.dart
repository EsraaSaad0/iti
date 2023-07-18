import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libararyy/views/todo/todo_cubit.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: BlocConsumer<TodoCubit, TodoState>(
        builder: (context, State) {
          if (State is TodoLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (State is TodoSuccess) {
            return ListView.builder(
              itemCount: context.watch<TodoCubit>().todoList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Text(
                      context.watch<TodoCubit>().todoList[index].id.toString()),
                  title: Text(context
                      .watch<TodoCubit>()
                      .todoList[index]
                      .completed
                      .toString()),
                  subtitle: Text(
                      context.watch<TodoCubit>().todoList[index].title ?? "--"),
                  trailing: Icon(Icons.person),
                );
              },
            );
          } else {
            return Center(
              child: Text("you have error in this screen"),
            );
          }
        },
        listener: (context, State) {
          if (State is TodoError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text("We have error")));
          }
        },
      ),
    );
  }
}


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
  