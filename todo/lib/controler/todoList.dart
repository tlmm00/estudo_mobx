import 'package:mobx/mobx.dart';
import '../model/todo.dart';

part 'todoList.g.dart';

class TodoList = _TodoList with _$TodoList;

abstract class _TodoList with Store {
  @observable
  ObservableList<Todo> todos = ObservableList<Todo>();

  @action
  void createTodo(String description) {
    Todo todo = Todo();
    todo.setDescription(description);
    todo.setId(todos.length);
    
    todos.add(todo);
  }

  @action
  void removeTodo(int idRemove) => todos.removeWhere((todo) => todo.getId()==idRemove);

  @action
  void checkTodo(int idCheck) => todos.where((todo) => todo.getId==idCheck).first.checkTodo();

  // @computed
  int getListLenght() => this.todos.length;

  // @computed
  Todo getTodoFromId(int id) => todos[id];

}
