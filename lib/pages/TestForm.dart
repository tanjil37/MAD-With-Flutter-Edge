import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class TestForm extends StatefulWidget {
   const TestForm({super.key});
   
  @override
  State<TestForm> createState() => _TestFormState();
}

class _TestFormState extends State<TestForm> {
  final TextEditingController titleText = TextEditingController();
  void _saveData(){
    final FirebaseFirestore _connection = FirebaseFirestore.instance;
    String mainText = titleText.text;
    _connection.collection('users').add({
      "name":mainText,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: titleText,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0)
                )
              ),
            ),
          ),
          ElevatedButton(onPressed: _saveData, child: Text("Click"))
        ],
      ),
    );
  }
}