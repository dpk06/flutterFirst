
import 'package:app_flutter/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'ChangeNameCard.dart';
import 'Pages/home_Page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awsome app",
      home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.cyan),
    ),
  );
}
