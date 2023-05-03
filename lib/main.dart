import 'package:amit_task/app/app.dart';
import 'package:amit_task/app/injection_container.dart' as di;
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}
