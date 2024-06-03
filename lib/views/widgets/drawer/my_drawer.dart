import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:practice_home/views/widgets/drawer/screens/settings.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
        child: Column(
          children: [
            const Row(
              children: [
                Gap(10),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 50,
                ),
              ],
            ),
            const Gap(25),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => const Settings(),
                  ),
                );
              },
              title: const Text("Settings"),
              leading: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
