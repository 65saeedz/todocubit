import 'package:flutter/material.dart';

class Todo_Search_Todo extends StatelessWidget {
  const Todo_Search_Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.grey.shade300,
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal)),
        hintText: 'Search Todos...',
        prefixIcon: Icon(
          Icons.search,
        ),
      ),

      //  focusColor: Colors.grey,
    );
  }
}
