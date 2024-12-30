import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0; // Initialize the counter

  void increaseCounter() {
    setState(() {
      counter++;
    });
    print('Counter: $counter');
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
    print('Counter reset!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //title: Text('Counter App'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter Value: $counter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20), // Add spacing
            ElevatedButton(
              onPressed: increaseCounter,
              child: Text('Increase'),
            ),
            SizedBox(height: 10), // Add spacing
            ElevatedButton(
              onPressed: resetCounter,
              child: Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
