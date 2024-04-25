// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Todo on _Todo, Store {
  late final _$descriptionAtom =
      Atom(name: '_Todo.description', context: context);

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  late final _$idAtom = Atom(name: '_Todo.id', context: context);

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$doneAtom = Atom(name: '_Todo.done', context: context);

  @override
  bool get done {
    _$doneAtom.reportRead();
    return super.done;
  }

  @override
  set done(bool value) {
    _$doneAtom.reportWrite(value, super.done, () {
      super.done = value;
    });
  }

  late final _$_TodoActionController =
      ActionController(name: '_Todo', context: context);

  @override
  void checkTodo() {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.checkTodo');
    try {
      return super.checkTodo();
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setDescription(String description) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.setDescription');
    try {
      return super.setDescription(description);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setId(int id) {
    final _$actionInfo =
        _$_TodoActionController.startAction(name: '_Todo.setId');
    try {
      return super.setId(id);
    } finally {
      _$_TodoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
description: ${description},
id: ${id},
done: ${done}
    ''';
  }
}
