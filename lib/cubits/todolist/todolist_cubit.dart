import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app_cubit/models/todo.dart';

part 'todolist_state.dart';

class TodolistCubit extends Cubit<TodolistState> {
  TodolistCubit() : super(TodolistState.initial());

  void addToDo(String desc) {
    Todo newToDo = Todo(description: desc);
    List<Todo> newToDoList = [...state.todolist, newToDo];
    emit(state.copyWith(todolist: newToDoList));
    print('object');
  }
}
