import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tile_view.dart';
import 'product_info.dart';

class BuildProductsListPage extends StatefulWidget {
  final productData;
  BuildProductsListPage({this.productData});

  @override
  _BuildProductsListPageState createState() => _BuildProductsListPageState();
}

class _BuildProductsListPageState extends State<BuildProductsListPage> {
  ProductItems product = ProductItems();
  void buildList(dynamic productData) {
    setState(
      () {
        if (productData == null) {
          product.detDesc =
              List<String>.generate(productData.length, (index) => 'NA');
          product.id = List<int>.generate(productData.length, (index) => 0);
          product.usp =
              List<String>.generate(productData.length, (index) => 'NA');
          product.feature =
              List<String>.generate(productData.length, (index) => 'NA');
          product.desc =
              List<String>.generate(productData.length, (index) => 'NA');
          product.image =
              List<String>.generate(productData.length, (index) => 'NA');
          product.name =
              List<String>.generate(productData.length, (index) => 'NA');
        } else {
          product.usp =
              List<String>.generate(productData.length, (index) => 'NA');
          product.feature =
              List<String>.generate(productData.length, (index) => 'NA');
          product.desc = List<String>.generate(productData.length,
              (index) => productData[index]['title']['rendered']);
          product.image = List<String>.generate(productData.length,
              (index) => productData[index]['acf']['image_1']);
          product.name = List<String>.generate(productData.length,
              (index) => productData[index]['acf']['model_number']);
          product.detDesc = List<String>.generate(productData.length,
              (index) => productData[index]['content']['rendered']);
          product.id = List<int>.generate(
              productData.length, (index) => productData[index]['id']);
        }
      },
    );
  }

  @override
  void initState() {
    buildList(widget.productData);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black87,
            Colors.black54,
            Colors.black26,
            Colors.white24,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
      ),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return TileView(
            name: product.name[index],
            desc: product.desc[index],
            image: product.image[index],
            index: index,
            usp: product.usp[index],
            feature: product.feature[index],
            detDesc: product.detDesc[index],
          );
        },
        itemCount: product.name.length,
      ),
    );
  }
}
