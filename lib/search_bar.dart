import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  TextEditingController searchController = new TextEditingController();
  List<String> listWord = ['hi', 'hello'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
            child: Container(
              width: 360.0,
              height: 100.0,
              padding: EdgeInsets.all(5.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Card(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0)),
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {});
                                },
                                child: Icon(Icons.search)),
                            labelText: "Search ...",
                            border: InputBorder.none),
                      )),
                ],
              ),
            )),
      ),
    );
  }
}
