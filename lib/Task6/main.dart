import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const Task6App());
}

class Task6App extends StatelessWidget {
  const Task6App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 6 - Jornadal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 42, 1, 6),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 42, 1, 6),
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Color.fromARGB(255, 42, 1, 6),
            ),
            foregroundColor: WidgetStatePropertyAll(Colors.white),
          ),
        ),
        useMaterial3: true,
      ),
      home: const Login(),
    );
  }
}
