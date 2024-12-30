import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basic App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://images.pexels.com/photos/29078814/pexels-photo-29078814/free-photo-of-scenic-mountain-viewpoint-with-cloudy-skies.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'), // Use a network image
              SizedBox(height: 10), // Add spacing
              Text(
                'Flutter Image App',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
