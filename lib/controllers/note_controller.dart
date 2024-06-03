import 'package:practice_home/models/note.dart';
import 'package:practice_home/utils/app_constants.dart';

class NoteController {
  final List<Note> _list = AppConstants().listNote;

  List<Note> get list {
    return [..._list];
  }

  void add(String text) {
    _list.add(Note(text: text));
  }

  void delete(int indx) {
    _list.removeAt(indx);
  }

  void edit(String task, int index) {
    _list[index].text = task;
  }

  int get noteNumber => _list.length;
}
