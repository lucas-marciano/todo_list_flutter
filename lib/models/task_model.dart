import 'package:mobx/mobx.dart';
part 'task_model.g.dart';

/// by @lucas-marciano on 03/06/2020
class TaskModel = _TaskModelBase with _$TaskModel;

abstract class _TaskModelBase with Store {
  _TaskModelBase({this.title, this.describe, this.check = false});

  @observable
  String title;

  @observable
  String describe;

  @observable
  bool check;

  @action
  setTitle(String title) => this.title = title;

  @action
  setDescribe(String describe) => this.describe = describe;

  @action
  setCheck(bool check) => this.check = check;
}
