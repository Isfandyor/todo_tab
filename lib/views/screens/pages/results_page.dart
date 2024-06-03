import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:practice_home/controllers/note_controller.dart';
import 'package:practice_home/controllers/todo_controller.dart';

class FavoritesPage extends StatelessWidget {
  final TodoController todoController;
  final NoteController noteConroller;
  const FavoritesPage({
    super.key,
    required this.todoController,
    required this.noteConroller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Todo ",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Done: ${todoController.statistic()["done"]}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          Text(
            "Not done: ${todoController.statistic()["notDone"]}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
          const Gap(30),
          const Text(
            "Note ",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          Text(
            "Number  notes: ${noteConroller.noteNumber}",
            style: const TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
