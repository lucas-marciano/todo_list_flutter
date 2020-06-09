import 'package:floor/floor.dart';

@entity
class Task {
  @primaryKey
  final int id;

  final String title;
  final String describe;
  final String createdAt = new DateTime.now().toString();

  Task(this.id, this.title, this.describe);
}
