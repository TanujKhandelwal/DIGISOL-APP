import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tile_view.dart';
import 'product_info.dart';

buildProductsListPage() {
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
          name: info[index]['name'],
          desc: info[index]['desc'],
          image: info[index]['image'],
          index: index,
        );
      },
      itemCount: info.length,
    ),
  );
}
