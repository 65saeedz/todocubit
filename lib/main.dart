import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app_cubit/cubits/TodofilteredsearchedCubit/todofilteredsearched_cubit.dart';
import 'cubits.dart';

import 'pages_widgets/todo_add_todo.dart';
import 'pages_widgets/todo_filter_row.dart';
import 'pages_widgets/todo_header.dart';
import 'pages_widgets/todo_listview.dart';
import 'pages_widgets/todo_search_todo.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<TodofilterCubit>(
        create: (BuildContext context) => TodofilterCubit(),
      ),
      BlocProvider<TodosearchCubit>(
        create: (BuildContext context) => TodosearchCubit(),
      ),
      BlocProvider<TodolistCubit>(
        create: (BuildContext context) => TodolistCubit(),
      ),
      BlocProvider<TodoactivecountCubit>(
        create: (BuildContext context) => TodoactivecountCubit(
          todolistCubit: BlocProvider.of<TodolistCubit>(context),
        ),
      ),
      BlocProvider<TodofilteredsearchedCubit>(
        create: (BuildContext context) => TodofilteredsearchedCubit(
            todosearchCubit: BlocProvider.of<TodosearchCubit>(context),
            todofilterCubit: BlocProvider.of<TodofilterCubit>(context),
            todolistCubit: BlocProvider.of<TodolistCubit>(context)),
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
              MyListview()
            ],
          )),
        ),
      )),
    );
  }
}
