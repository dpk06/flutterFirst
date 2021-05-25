import 'package:app_flutter/Utils/Constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/foundation.dart';
import 'dart:convert';

class Homepage extends StatefulWidget {
  const Homepage({Key key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;

  @override
  void initState() {
    super.initState();
    getdata();
  }

  getdata() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awsome app"),
        actions: [
          IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {
            Constants.prefs.setBool("loggedIn", false);
            Navigator.restorablePushReplacementNamed(context, ("/login"));
          })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: data != null
            ? ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        title: Text(data[index]["title"]),
                        subtitle: Text("ID: ${data[index]["id"]}"),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(data[index]["url"]),
                        ),
                        onTap: () => print(data[index]["title"])
                        ),
                  );
                },
                itemCount: data.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          getdata();
          // myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}

class Resource<T> {
  final String url;
  T Function(Response response) parse;

  Resource({this.url, this.parse});
}
