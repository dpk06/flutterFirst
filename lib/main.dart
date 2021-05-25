

import 'package:app_flutter/Pages/login_page.dart';
import 'package:app_flutter/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Pages/home_Page.dart';

Future  main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Awesome app",
      home: Constants.prefs.getBool("loggedIn") == true
          ? Homepage()
          : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.cyan),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => Homepage()
      },
    ),
  );
}
