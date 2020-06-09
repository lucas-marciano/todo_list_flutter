import 'package:floor/floor.dart';
import 'package:todo_list/shared/models/task.dart';

@dao
abstract class TaskDao {
  @Query('SELECT * FROM Task')
  Future<List<Task>> getAllTasks();

  @Query('SELECT * FROM Task WHERE id = :id')
  Stream<Task> findTaskById(int id);

  @insert
  Future<void> addTask(Task task);

  @update
  Future<int> updateTask(Task task);

  @delete
  Future<int> deleteTask(Task task);
}
