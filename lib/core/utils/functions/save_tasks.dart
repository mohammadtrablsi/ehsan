import 'package:ehsan/Features/tasks/domain/entites/taskEntity.dart';
import 'package:hive/hive.dart';

void saveTasksData(List<TaskEntity> tasks, String boxName) {
  var box = Hive.box<TaskEntity>(boxName);
  box.addAll(tasks);
}
