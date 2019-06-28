import 'package:flutter/material.dart';
import './ui/draw.dart';
import'./ui/body.dart';

class HomePage extends StatelessWidget{
  static String tag = 'home-page';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: draw(),
      appBar: new AppBar(title: new Text("PRODUCT"),backgroundColor: Colors.red,),
      body: Body(),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.red,
        child: Icon(Icons.search),onPressed: ()=>null,

      ),
    );
  }
}


