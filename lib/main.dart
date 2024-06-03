import 'package:flutter/material.dart';
import 'package:practice_home/providers/index_provider.dart';
import 'package:practice_home/theme/theme_provider.dart';
import 'package:practice_home/views/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider()),
        ChangeNotifierProvider<IndexProvider>(create: (_) => IndexProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
