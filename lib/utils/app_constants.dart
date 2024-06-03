import 'package:practice_home/models/note.dart';
import 'package:practice_home/models/todo.dart';

class AppConstants {
  List<Note> get listNote => [
        Note(text: "Bugun yuguraman"),
        Note(text: "Kitob o'qish"),
        Note(text: "Soat tuzatish"),
        Note(text: "Uhlash"),
        Note(text: "Suv ichish"),
        Note(text: "Ovqatlanish"),
      ];

  List<Todo> get listTodo => [
        Todo(text: "Bugun yuguraman", isDone: false),
        Todo(text: "Kitob o'qish", isDone: false),
        Todo(text: "Soat tuzatish", isDone: false),
        Todo(text: "Uhlash", isDone: false),
        Todo(text: "Suv ichish", isDone: false),
        Todo(text: "Ovqatlanish", isDone: false),
      ];

  // // theme mode
  // static Future<void> saveThemeMode(String key, bool isDark) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool(key, isDark);
  // }

  // static Future<bool?> getThemeMode(String key) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getBool(key);
  // }

  // static Future<void> saveString(String key, String value) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setString(key, value);
  // }

  // static Future<String?> getString(String key) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getString(key);
  // }

  // static Future<void> saveDouble(String key, double value) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setDouble(key, value);
  // }

  // static Future<double?> getDouble(key) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   return prefs.getDouble(key);
  // }
}
