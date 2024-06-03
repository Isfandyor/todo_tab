import 'package:flutter/material.dart';
import 'package:practice_home/controllers/note_controller.dart';
import 'package:practice_home/controllers/todo_controller.dart';
import 'package:practice_home/controllers/user_controller.dart';
import 'package:practice_home/providers/index_provider.dart';
import 'package:practice_home/views/screens/pages/results_page.dart';
import 'package:practice_home/views/screens/pages/home_page.dart';
import 'package:practice_home/views/screens/pages/profile_page.dart';
import 'package:practice_home/views/widgets/bottom_navigation_bar.dart';
import 'package:practice_home/views/widgets/drawer/my_drawer.dart';
import 'package:practice_home/views/widgets/navigation_rail.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late UserController userController;
  final todoController = TodoController();
  final noteController = NoteController();
  List<Widget> pages = [];

  @override
  void initState() {
    super.initState();
    userController = UserController();
    pages = [
      const HomePage(),
      FavoritesPage(
        todoController: todoController,
        noteConroller: noteController,
      ),
      ProfilePage(
        userController: userController,
      ),
    ];
  }

  late int index;

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    index = Provider.of<IndexProvider>(context).currentIndex;
    return Scaffold(
      drawer: const MyDrawer(),
      bottomNavigationBar:
          widthScreen < 500 ? const MyBottomNavigationBar() : null,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Todo",
          style: TextStyle(
            fontFamily: "Agbalumo",
            color: Colors.white,
          ),
        ),
      ),
      body: widthScreen >= 500
          ? Row(
              children: [
                const MyNavigationRail(),
                Expanded(child: pages[index]),
              ],
            )
          : Column(
              children: [
                Expanded(child: pages[index]),
              ],
            ),
    );
  }
}
