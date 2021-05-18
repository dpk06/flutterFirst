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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(8),
          alignment: Alignment.center,
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
                BoxShadow(
                color: Colors.grey[400],
                blurRadius: 5,
                offset: Offset(2.0, 10.0 )
              )
            ],
            color: Colors.teal,
            gradient: LinearGradient(colors: [Colors.yellow, Colors.pink ])
          ),
          child: Text(
              "I am a box",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
               fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      )
    );
  }
}
