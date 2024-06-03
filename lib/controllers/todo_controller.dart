import 'package:practice_home/models/todo.dart';
import 'package:practice_home/utils/app_constants.dart';

class TodoController {
  final List<Todo> _list = AppConstants().listTodo;

  void done(int indx) {
    _list[indx].isDone = !_list[indx].isDone;
  }

  List<Todo> get list {
    return [..._list];
  }

  void add(String text) {
    _list.add(Todo(text: text, isDone: false));
  }

  void delete(int indx) {
    _list.removeAt(indx);
  }

  void edit(String task, int index) {
    _list[index].text = task;
  }

  Map<String, dynamic> statistic() {
    int done = 0;
    int notDone = 0;

    for (var todo in _list) {
      if (todo.isDone) {
        done += 1;
      } else {
        notDone += 1;
      }
    }
    return {"done": done, "notDone": notDone};
  }
}
