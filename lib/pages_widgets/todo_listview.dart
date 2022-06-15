import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/cubits/todolist/todolist_cubit.dart';

class MyListview extends StatelessWidget {
  const MyListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TodolistCubit, TodolistState>(
      builder: (context, state) {
        return ListView.separated(
            primary: false,
            shrinkWrap: true,
            separatorBuilder: (context, index) => Divider(),
            itemCount: state.todolist.length,
            itemBuilder: ((context, index) => Dismissible(
                  onDismissed: (_) {
                    context
                        .read<TodolistCubit>()
                        .removeToDo(state.todolist[index]);
                  },
                  background: Container(
                    color: Colors.pink[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                  key: ValueKey(state.todolist[index].id),
                  child: ListTile(
                    leading: Checkbox(
                        value: state.todolist[index].isCompleted,
                        onChanged: (_) {
                          context
                              .read<TodolistCubit>()
                              .toggleTodo(state.todolist[index].id);
                        }),
                    title: Text(state.todolist[index].description),
                    onTap: () {
                      // showDialog(
                      //     context: context,
                      //     builder:
                      //      );
                    },
                  ),
                )));
      },
    );
  }
}
