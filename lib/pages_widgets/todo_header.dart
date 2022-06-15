import 'package:flutter/material.dart';

class Todo_Header extends StatelessWidget {
  const Todo_Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'TODO',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.w500),
          ),
          Text(
            '5 items left',
            style: TextStyle(
                fontSize: 25,
                color: Colors.red,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
