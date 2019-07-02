import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './product_page.dart';

class TileView extends StatelessWidget {
  final String name;
  final String desc;
  final String image;
  final int index;


  TileView({this.name, this.desc, this.image, this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: Colors.grey.shade100,
        child: Container(
            padding:
                EdgeInsets.only(top: 15.0, bottom: 15.0, right: 0, left: 0),
            child: Column(
              children: <Widget>[
                Container(
                  child: ListTile(
                    leading: Image(
                      image: NetworkImage(image),
                    ),
                    title: Text(
                      name,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Container(
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductState(
                  name: name,
                  desc: desc,
                  image: image,
                ),
          ),
        );
      },
      splashColor: Colors.grey,
    );
  }
}
