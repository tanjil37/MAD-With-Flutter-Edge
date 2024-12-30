import 'package:flutter/material.dart';
//import 'package:flutter_application_1/mid/counter.dart';
import 'package:flutter_application_1/pages/CustomDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(length: 3, child: CustomDrawer()),
    );
  }
}
