// import 'package:flutter/material.dart';

// class Todoapp extends StatefulWidget {
//   const Todoapp({super.key});

//   @override
//   State<Todoapp> createState() => _TodoappState();
// }

// class _TodoappState extends State<Todoapp> {
//   List Item = ["Item01", "Item02"];
//   TextEditingController titleTex = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: TextField(
//           controller: titleTex,
//         ),
//         actions: [
//           ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   Item.add(titleTex.text);
//                 });
//                 titleTex.clear();
//               },
//               child: const Text("Add Item"))
//         ],
//       ),
//       body: ListView.builder(
//           itemCount: Item.length,
//           itemBuilder: (context, index) {
//             return Container(
//                 margin: const EdgeInsets.only(bottom: 2.0),
//                 child: ListTile(
//                   title: Text(
//                     Item[index],
//                     style: const TextStyle(color: Colors.white),
//                   ),
//                   tileColor: Colors.green,
//                 ),
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                         onPressed: () {
//                           setState(() {
//                             Item.removeAt(index);
//                           });
//                         },
//                         icon: Icon(Icons.delete, color: Colors.white,),)
//                   ],
//                 ));
//           }),
//     );
//   }
// }
