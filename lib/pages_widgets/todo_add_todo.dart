import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/cubits/todolist/todolist_cubit.dart';

class Todo_Add_Todo extends StatelessWidget {
  Todo_Add_Todo({
    Key? key,
  }) : super(key: key);
  late final TextEditingController textEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        onSubmitted: (String desc) {
          textEditingController.text = desc;
          context.read<TodolistCubit>().addToDo(desc);
          textEditingController.clear();
        },
        decoration: InputDecoration(hintText: 'What to do?'),
      ),
    );
  }
}
