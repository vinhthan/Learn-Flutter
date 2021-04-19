import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  String name;
  int age;

  MyApp(this.name, this.age);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // chua view
  String _email = "";
  final emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is a StateFulWidget",
      home: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: TextField(
                controller: emailEditingController,
                onChanged: (text) {
                  this.setState(() {
                    _email = text;//khi nd thay doi
                  });
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                      const Radius.circular(20)
                    )),
                    labelText: "Enter your email"),
              ),
            ),
            Text(
              "$_email",
              style: TextStyle(fontSize: 30, color: Colors.red),
            ),
            Text(
              "name = ${widget.name}, age = ${widget.age}",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
            Text(
              "name = ${widget.name}, age = ${widget.age}",
              style: TextStyle(fontSize: 30, color: Colors.green),
            ),
          ],
        )),
      ),
    );
  }
}
