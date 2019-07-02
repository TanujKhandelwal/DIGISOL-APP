import 'package:flutter/material.dart';
import 'product_info.dart';
//import 'product_page.dart';

class DataSearch extends SearchDelegate<String> {
  final productNames =
      List<String>.generate(info.length, (index) => info[index]['name']);
  final recentProducts = ['Ask Thiyagu Sir for suggestions'];

  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appbar
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // leading icon on left of appbar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
//    int index;
//    //show result based on the selection
//    for (int i = 0; i < info.length; i++) {
//      if (query == info[index]['name']) {
//        index = i;
//      }
//    }
//    print(index);
    final suggestionList = query.isEmpty
        ? productNames
        : productNames.where((p) => p.toLowerCase().startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.arrow_right),
        title: RichText(
          text: TextSpan(
              text: suggestionList[index].substring(0, query.length),
              style: TextStyle(
                color: Colors.red[700],
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(
                      color: Colors.red[200],
                    ))
              ]),
        ),
        onTap: () {
          close(context, query.toUpperCase());
        },
      ),
      itemCount: suggestionList.length,
    );

  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something
    final suggestionList = query.isEmpty
        ? productNames
        : productNames.where((p) => p.toLowerCase().startsWith(query)).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
            //leading: Icon(Icons.arrow_right),
            title: RichText(
              text: TextSpan(
                  text: suggestionList[index].substring(0, query.length),
                  style: TextStyle(
                    color: Colors.red[700],
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                        text: suggestionList[index].substring(query.length),
                        style: TextStyle(
                          color: Colors.red[200],
                        ))
                  ]),
            ),
            onTap: () {
              close(context, query);
            },
          ),
      itemCount: suggestionList.length,
    );
  }
}
