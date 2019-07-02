import 'ui/searchbar2.dart';
import 'package:flutter/material.dart';
import './ui/draw.dart';
import './ui/body.dart';
//import 'ui/searchbar.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Draw(),
      appBar: new AppBar(
        title: new Text("PRODUCT"),
        backgroundColor: Colors.red,
      ),
      body: buildProductsListPage(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: Icon(Icons.search),
        onPressed: () {
          showSearch(
            context: context,
            delegate: DataSearch2(),
          );
        },
      ),
    );
  }
}
