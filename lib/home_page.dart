import 'package:finale/ui/product_info.dart';

import 'ui/searchbar2.dart';
import 'package:flutter/material.dart';
import './ui/draw.dart';
import './ui/body.dart';
//import './ui/product_info.dart';

class HomePage extends StatefulWidget {
  HomePage({
    this.productData,
  });

  final productData;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCategory = 'Active';
  ProductItems product = ProductItems();

  buildList() {
    if (widget.productData == null) {
      product.detDesc =
          List<String>.generate(widget.productData.length, (index) => 'NA');
      product.id = List<int>.generate(widget.productData.length, (index) => 0);
      product.usp =
          List<String>.generate(widget.productData.length, (index) => 'NA');
      product.feature =
          List<String>.generate(widget.productData.length, (index) => 'NA');
      product.desc =
          List<String>.generate(widget.productData.length, (index) => 'NA');
      product.image =
          List<String>.generate(widget.productData.length, (index) => 'NA');
      product.name =
          List<String>.generate(widget.productData.length, (index) => 'NA');
    } else {
      product.usp =
          List<String>.generate(widget.productData.length, (index) => 'NA');
      product.feature =
          List<String>.generate(widget.productData.length, (index) => 'NA');
      product.desc = List<String>.generate(widget.productData.length,
          (index) => widget.productData[index]['title']['rendered']);
      product.image = List<String>.generate(widget.productData.length,
          (index) => widget.productData[index]['acf']['image_1']);
      product.name = List<String>.generate(widget.productData.length,
          (index) => widget.productData[index]['acf']['model_number']);
      product.detDesc = List<String>.generate(widget.productData.length,
          (index) => widget.productData[index]['content']['rendered']);
      product.id = List<int>.generate(widget.productData.length,
          (index) => widget.productData[index]['id']);
    }
  }

  @override
  void initState() {
    buildList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Draw(),
        appBar: AppBar(
          title: Text("PRODUCT"),
          backgroundColor: Colors.red,
          actions: <Widget>[
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: selectedCategory,
                isDense: false,
                hint: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onChanged: (value) {
                  setState(() {
                    selectedCategory = value;
                  });
                },
                elevation: 15,
                items: [
                  DropdownMenuItem(
                    child: Text(
                      'Active',
                      style: TextStyle(
                        color: Colors.grey[900],
                      ),
                    ),
                    value: 'Active',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Passive',
                      style: TextStyle(
                        color: Colors.grey[900],
                      ),
                    ),
                    value: 'Passive',
                  ),
                ],
              ),
            )
          ],
        ),
        body: BuildProductsListPage(
          productData: widget.productData,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.search),
          onPressed: () {
            print(product.name);
            for (int i = 0; i < info.length; i++) {
              print(info[i]['name']);
            }
            //            showSearch(
//              context: context,
//              delegate: DataSearch2(product: product),
            //);
          },
        ),
      ),
    );
  }
}
