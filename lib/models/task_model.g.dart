// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskModel on _TaskModelBase, Store {
  final _$titleAtom = Atom(name: '_TaskModelBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$describeAtom = Atom(name: '_TaskModelBase.describe');

  @override
  String get describe {
    _$describeAtom.reportRead();
    return super.describe;
  }

  @override
  set describe(String value) {
    _$describeAtom.reportWrite(value, super.describe, () {
      super.describe = value;
    });
  }

  final _$checkAtom = Atom(name: '_TaskModelBase.check');

  @override
  bool get check {
    _$checkAtom.reportRead();
    return super.check;
  }

  @override
  set check(bool value) {
    _$checkAtom.reportWrite(value, super.check, () {
      super.check = value;
    });
  }

  final _$_TaskModelBaseActionController =
      ActionController(name: '_TaskModelBase');

  @override
  dynamic setTitle(String title) {
    final _$actionInfo = _$_TaskModelBaseActionController.startAction(
        name: '_TaskModelBase.setTitle');
    try {
      return super.setTitle(title);
    } finally {
      _$_TaskModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setDescribe(String describe) {
    final _$actionInfo = _$_TaskModelBaseActionController.startAction(
        name: '_TaskModelBase.setDescribe');
    try {
      return super.setDescribe(describe);
    } finally {
      _$_TaskModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCheck(bool check) {
    final _$actionInfo = _$_TaskModelBaseActionController.startAction(
        name: '_TaskModelBase.setCheck');
    try {
      return super.setCheck(check);
    } finally {
      _$_TaskModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
describe: ${describe},
check: ${check}
    ''';
  }
}
