import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../controler/todoList.dart';
// import '../main.dart';

class AddTodoWdgt extends StatelessWidget {
  const AddTodoWdgt({super.key, required TodoList Todolist, required TextEditingController tc});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Column(children: [
        SizedBox(
          width: 250,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Descrição',
            ),
          ),
        ),
        TextButton(
          onPressed: () => {

          },
          child: Text("Adicionar"))
      ]),
    ]);
  }
}
