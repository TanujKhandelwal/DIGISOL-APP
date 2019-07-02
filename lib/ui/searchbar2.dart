import 'package:flutter/material.dart';
import 'product_info.dart';
import 'tile_view.dart';

class DataSearch2 extends SearchDelegate<String> {
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
    // show when someone searches for something

    final suggestionList = query.isEmpty
        ? productNames
        : productNames.where((p) => p.toLowerCase().startsWith(query)).toList();
    int getIndex(String test) {
      int index;
      for (int i = 0; i < info.length; i++) {
        if (info[i]['name'] == test) {
          index = i;
        }
      }
      return index;
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.indigo[800],
            Colors.indigo[700],
            Colors.indigo[600],
            Colors.indigo[400],
          ],
        ),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TileView(
            name: info[getIndex(suggestionList[index])]['name'],
            desc: info[getIndex(suggestionList[index])]['desc'],
            image: info[getIndex(suggestionList[index])]['image'],
            index: index,
          );
        },
        itemCount: suggestionList.length,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // show when someone searches for something

    final suggestionList = query.isEmpty
        ? productNames
        : productNames.where((p) => p.toLowerCase().startsWith(query)).toList();
    int getIndex(String test) {
      int index;
      for (int i = 0; i < info.length; i++) {
        if (info[i]['name'] == test) {
          index = i;
        }
      }
      return index;
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.indigo[800],
            Colors.indigo[700],
            Colors.indigo[600],
            Colors.indigo[400],
          ],
        ),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TileView(
            name: info[getIndex(suggestionList[index])]['name'],
            desc: info[getIndex(suggestionList[index])]['desc'],
            image: info[getIndex(suggestionList[index])]['image'],
            index: index,
          );
        },
        itemCount: suggestionList.length,
      ),
    );
  }
}
