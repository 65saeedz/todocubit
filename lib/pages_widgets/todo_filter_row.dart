import 'package:flutter/material.dart';

class Todo_Filter_Row extends StatefulWidget {
  Todo_Filter_Row({Key? key}) : super(key: key);

  @override
  State<Todo_Filter_Row> createState() => _Todo_Filter_RowState();
}

class _Todo_Filter_RowState extends State<Todo_Filter_Row> {
  var SelectedTab = 'All';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          tabButton('All'), tabButton('Active'), tabButton('Completed'),
          //  Text('Active'),
          // Text('Completed')
        ],
      ),
    );
  }

  TextButton tabButton(String headerTxt) {
    return TextButton(
      onPressed: () {
        setState(() {
          SelectedTab = headerTxt;
        });
      },
      child: Text(
        headerTxt,
        style: TextStyle(
            fontSize: SelectedTab == headerTxt ? 25 : 20,
            fontWeight:
                SelectedTab == headerTxt ? FontWeight.w800 : FontWeight.normal,
            color: SelectedTab == headerTxt ? Colors.blue : Colors.grey),
      ),
    );
  }
}
