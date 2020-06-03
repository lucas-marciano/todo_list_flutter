// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<int> _$totalCheckedComputed;

  @override
  int get totalChecked =>
      (_$totalCheckedComputed ??= Computed<int>(() => super.totalChecked,
              name: '_HomeControllerBase.totalChecked'))
          .value;
  Computed<List<TaskModel>> _$filteredListComputed;

  @override
  List<TaskModel> get filteredList => (_$filteredListComputed ??=
          Computed<List<TaskModel>>(() => super.filteredList,
              name: '_HomeControllerBase.filteredList'))
      .value;

  final _$listTasksAtom = Atom(name: '_HomeControllerBase.listTasks');

  @override
  ObservableList<TaskModel> get listTasks {
    _$listTasksAtom.reportRead();
    return super.listTasks;
  }

  @override
  set listTasks(ObservableList<TaskModel> value) {
    _$listTasksAtom.reportWrite(value, super.listTasks, () {
      super.listTasks = value;
    });
  }

  final _$filterAtom = Atom(name: '_HomeControllerBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic add(TaskModel task) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.add');
    try {
      return super.add(task);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic remove(TaskModel task) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.remove');
    try {
      return super.remove(task);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setFilter(String filter) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setFilter');
    try {
      return super.setFilter(filter);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listTasks: ${listTasks},
filter: ${filter},
totalChecked: ${totalChecked},
filteredList: ${filteredList}
    ''';
  }
}
