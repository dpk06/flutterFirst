import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    title: "Awsome app",
    home: Homepage()
  ));
}

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awsome app"),
      ),
      body: Container(
        child: Center(child: Text("Hi fluter")),
      ),
    );
  }
}
