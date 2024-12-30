import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Text("Child of Container"),
          ),const SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Text("Child of Container"),
          ),
          const SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Text("Child of Container"),
          ),SizedBox(
            width: 10,
            height: 10,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.green,
            child: const Text("Child of Container"),
          ),
        ],
      ),
    );
  }
}
