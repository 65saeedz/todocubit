import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/cubits/todolist/todolist_cubit.dart';

import 'pages_widgets/todo_add_todo.dart';
import 'pages_widgets/todo_filter_row.dart';
import 'pages_widgets/todo_header.dart';
import 'pages_widgets/todo_listview.dart';
import 'pages_widgets/todo_search_todo.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<TodolistCubit>(
        create: (BuildContext context) => TodolistCubit(),
      ),
    ],
    child: MaterialApp(
      home: const HomePage(),
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          child: Center(
              child: Column(
            children: [
              Todo_Header(),
              Divider(),
              Todo_Add_Todo(),
              Todo_Search_Todo(),
              Todo_Filter_Row(),
              // Todo_List_view(),
              MyListview()
            ],
          )),
        ),
      )),
    );
  }
}
