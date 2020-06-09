import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:todo_list/shared/models/task.dart';
import 'package:todo_list/shared/repository/task_dao_repository.dart';

part 'database.g.dart';

@Database(version: 1, entities: [Task])
abstract class AppDatabase extends FloorDatabase {
  TaskDao get personDao;
}
