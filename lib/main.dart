// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last, unused_import, unused_label

import 'package:flutter/material.dart';
import 'package:flutter_gdsc_task_2/login.dart';
import 'register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/Login",
        routes: {
          '/Register': (context) => const register(),
          '/Login': (context) => const login(),
          
        });
  }
}
