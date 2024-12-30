import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}


class _CounterState extends State<Counter> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Text("${counter}"),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  counter++;

                });
                print(counter);
              },
              child: Text("Counter"))
        ],
      ),
    );
  }
}
