import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Add Task',
            style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
          ),
          TextFormField(autofocus: true, controller: _controller),
          TextButton(
            onPressed: () {
              _controller.clear();
            },
            child: const Text('Add'),
          )
        ],
      ),
    );
  }
}
