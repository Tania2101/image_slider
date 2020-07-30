import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'image_slider.dart';
import 'search_bar.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: Container(
            child:Column(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: 600.0,
                        child: CarouselDemo()),
                  ),
                ),
                SizedBox(height: 0.0),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(child: MyHome()),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

