import 'package:flutter/material.dart';
import 'package:online_doctor_appointment/widget/doctor_list.dart';
import 'package:online_doctor_appointment/widget/homepage.dart';
import 'package:online_doctor_appointment/widget/lastpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
