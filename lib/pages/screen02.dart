import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String name;
  final String email;
  final String phone;
 
  
  const Screen2({super.key, required this.name, required this.email, required this.phone });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("User Name: ${name}"),
          Text("User Name: ${email}"),
          Text("User Name: ${phone}"),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop(context);
            },
            child: const Text("Go Back"),
          ),
        ],
      ),
    );
  }
}
