import 'package:mobx/mobx.dart';

part 'todo.g.dart';

//class Todo = _Todo with _$Todo;

class Todo = _Todo with _$Todo;

abstract class _Todo with Store {
  @observable
  String description = '';

  @observable
  int id = -1;

  @observable
  bool done = false;

  @action
  void checkTodo() {
    this.done = !this.done;
  }

  @action
  void setDescription(String description) {
    this.description = description;
  }

  @action
  void setId(int id){
    this.id = id;
  }

  String getDescription(){
    return this.description;
  }

  int getId() {
    return this.id;
  }

}
