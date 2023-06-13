import 'package:amit_task/tasks/task2/login_screen.dart';
import 'package:flutter/material.dart';
class Task2 extends StatelessWidget {
  const Task2({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
