import 'package:flutter/material.dart';
import 'package:practice_home/controllers/user_controller.dart';

class ProfilePage extends StatefulWidget {
  UserController userController;
  ProfilePage({
    super.key,
    required this.userController,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final formKey = GlobalKey<FormState>();

  String? name;

  String? lastName;

  String? phoneNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 110,
                height: 110,
                child: Stack(
                  children: [
                    const Align(
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: 50,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.camera_alt),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              "Your name",
              style: TextStyle(
                fontSize: 15,
                height: 2.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextFormField(
              initialValue: widget.userController.user.name ?? "",
              onSaved: (value) {
                name = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                hintText: "Isfandiyor",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Your lastname",
              style: TextStyle(
                fontSize: 15,
                height: 2.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextFormField(
              initialValue: widget.userController.user.lastname,
              onSaved: (value) {
                lastName = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your lastname';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                hintText: 'Obidov',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Phone number",
              style: TextStyle(
                fontSize: 15,
                height: 2.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            TextFormField(
              initialValue: widget.userController.user.phoneNumber,
              onSaved: (value) {
                phoneNumber = value;
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                } else if (value
                    .contains(RegExp(r"^\+998 \d{2} \d{3} \d{2} \d{2}"))) {
                  return "Please enter a valid phone number";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                hintText: "+998 ** *** ** **",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                        fixedSize: const Size(double.infinity, 40),
                        backgroundColor: Colors.blue,
                        shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          widget.userController
                              .setUser(name, lastName, phoneNumber, "");
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Form saved')),
                          );
                        }
                      },
                      child: const Text("Save")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
