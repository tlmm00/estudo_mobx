import 'package:ex_mobx/controler/todoList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'view/addTodoWdgt.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // MyApp({super.key});

  TodoList todoList = TodoList();
  TextEditingController tc = TextEditingController();

  String appTitle = "Todo App";

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mobx Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 46, 133, 11)),
        useMaterial3: true,
      ),
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(appTitle),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Column(children: [
              SizedBox(
                width: 250,
                child: TextField(
                  controller: tc,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Descrição',
                  ),
                ),
              ),
              TextButton(
                onPressed:() => {
                  todoList.createTodo(tc.text)
                },
                child: Text("Adicionar"))
            ]),

            Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Observer(
                  builder: (_) => ListView.builder(
                    shrinkWrap: true,
                    itemCount: todoList.getListLenght(),
                    itemBuilder: (context, id){
                      return Container(
                        child: Center(
                          child: 
                            Container(
                              height: 100,
                              child: ListTile(
                                title: Text(todoList.getTodoFromId(id).getDescription()),
                                trailing:  PopupMenuButton<ListTileTitleAlignment>(
                                  itemBuilder: (BuildContext context) => <PopupMenuEntry<ListTileTitleAlignment>>[
                                    PopupMenuItem<ListTileTitleAlignment>(
                                      child: TextButton(onPressed: () {
                                          todoList.removeTodo(id);
                                        }, child: Text("Delete")),
                                    ),


                                    
                                  ]        
                              ),
                            ),
                          //  ListTile(
                          //       title: Text(todoList.getTodoFromId(id).getDescription()),
                          //       // subtitle: const Text('Tap here to go back'),
                          //       tileColor: Colors.blue[700],
                          //       onTap: () {
                          //         Navigator.pop(context);
                          //       },
                          //     ),
                        ),
                      ));
                    }
                  ),
                )
              ]
            ),
          
          ],
        ),
      ),
    ));
  }
}
