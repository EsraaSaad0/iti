import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import '../Models/todo-model.dart';

class TodoSercive {
  String url = "https://jsonplaceholder.typicode.com/todos";

  Future<List<TodoModel>> getTodoData() async {
    List<TodoModel> todoList = [];
    final dio = Dio();
    final response = await dio.get(url);
    print(response);
    var data = response.data;
    data.forEach((jsonElement) {
      TodoModel completed = TodoModel.fromJson(jsonElement);
      todoList.add(completed);
    });
    return todoList;
  }
}
