import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final Function addTaskCallback;

  AddTaskScreen(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    late String taskName;

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextFormField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                taskName = value;
              },
              autofocus: true,
              controller: _controller,
            ),
            TextButton(
              onPressed: () => addTaskCallback(taskName),
              child: const Text('Add'),
            )
          ],
        ),
      ),
    );
  }
}

// () {
//               _controller.clear();
//             }