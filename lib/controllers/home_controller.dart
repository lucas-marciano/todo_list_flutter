import 'package:mobx/mobx.dart';
import 'package:todo_list/shared/models/task_model.dart';
part 'home_controller.g.dart';

/// by @lucas-marciano on 03/06/2020
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableList<TaskModel> listTasks = ObservableList<TaskModel>();

  @observable
  String filter = "";

  @computed
  int get totalChecked => listTasks.where((item) => item.check).length;

  @computed
  List<TaskModel> get filteredList {
    if (filter.isEmpty)
      return listTasks;
    else
      return listTasks
          .where(
              (item) => item.title.toLowerCase().contains(filter.toLowerCase()))
          .toList();
  }

  @action
  add(TaskModel task) {
    listTasks.add(task);
  }

  @action
  remove(TaskModel task) {
    listTasks.removeWhere((item) => item.title == task.title);
  }

  @action
  setFilter(String filter) => this.filter = filter;
}
