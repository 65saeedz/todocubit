import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:todo_app_cubit/cubits/todofilter/todofilter_cubit.dart';
import 'package:todo_app_cubit/cubits/todolist/todolist_cubit.dart';
import 'package:todo_app_cubit/cubits/todosearch/todosearch_cubit.dart';

import '../../models/todo.dart';

part 'todofilteredsearched_state.dart';

class TodofilteredsearchedCubit extends Cubit<TodofilteredsearchedState> {
  final TodolistCubit todolistCubit;
  final TodofilterCubit todofilterCubit;
  final TodosearchCubit todosearchCubit;
  late final StreamSubscription todolistCubitsubscription;
  late final StreamSubscription todofilterCubitsubscription;
  late final StreamSubscription todosearchCubitsubscription;

  TodofilteredsearchedCubit({
    required this.todolistCubit,
    required this.todofilterCubit,
    required this.todosearchCubit,
  }) : super(TodofilteredsearchedState.initial());
}
