import 'package:bloc/bloc.dart';
import 'package:libararyy/Models/todo-model.dart';
import 'package:meta/meta.dart';

import '../../services/todo-service.dart';

part 'todo_state.dart';

class TodoCubit extends Cubit<TodoState> {
  TodoCubit() : super(TodoInitial()){
    getTodo();
  }
  List<TodoModel> todoList = [];
  bool isLoading = true;

  getTodo() async {
    emit(TodoLoading());
    try {
      todoList = await TodoSercive().getTodoData();
      isLoading = false;
     // throw Exception();
      emit(TodoSuccess());
    } catch (e) {
      print(e.toString());
      emit(TodoError());
    }
  }
}
