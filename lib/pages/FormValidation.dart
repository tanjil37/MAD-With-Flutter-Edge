import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/screen02.dart';




class Formvalidation extends StatelessWidget {
  GlobalKey<FormState> _formkey = GlobalKey();
  Formvalidation({super.key});
  void _formSubmit() {
    if (_formkey.currentState!.validate()) {}
  }

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: Form(
            key: _formkey,
            child: Column(
              children: [
                const Text(
                  "Contact Form",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                      floatingLabelStyle: const TextStyle(
                          color: Color.fromARGB(255, 76, 86, 175)),
                      //labelStyle: TextStyle(color: Colors.lime),
                      //focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.only()),
                      labelText: "user Name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "User Name is required";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: email,
                  decoration: InputDecoration(
                      floatingLabelStyle: const TextStyle(
                          color: const Color.fromARGB(255, 76, 86, 175)),
                      //labelStyle: TextStyle(color: Colors.lime),
                      //focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.only()),
                      labelText: "Your Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "User Email Address is required";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: phone,
                  decoration: InputDecoration(
                      floatingLabelStyle: const TextStyle(
                          color: Color.fromARGB(255, 76, 86, 175)),
                      //labelStyle: TextStyle(color: Colors.lime),
                      //focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.only()),
                      labelText: "Your Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0))),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "User Phone Number is required";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                    width: double.infinity,
                    height: 50.0,
                    child: ElevatedButton(
                      onPressed: () {
                        _formSubmit();
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Screen2(
                              name: name.text,
                              email: email.text,
                              phone: phone.text,
                            )));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: Colors.white),
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
