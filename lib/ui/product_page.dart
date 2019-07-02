import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductState extends StatelessWidget {
  final String name;
  final String desc;
  final String image;

  ProductState({this.name, this.desc, this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
            title: Text(
              name,
            ),
            backgroundColor: Colors.red),
        body: Container(
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
          child: ListView(children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(image),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0)),
              child: ListTile(
                title: Container(child: Text("Description :")),
                subtitle: Container(
                  child: Text(desc),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0)),
              child: ListTile(
                title: Container(child: Text("Description :")),
                subtitle: Container(
                  child: Text(desc),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20.0)),
              child: ListTile(
                title: Container(child: Text("Description :")),
                subtitle: Container(
                  child: Text(desc),
                ),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: //bottom(),
            BottomAppBar(
          color: Colors.red,
          elevation: 10.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => null,
                  padding: EdgeInsets.all(12),
                  color: Colors.indigo.shade500,
                  child: Text('PDF', style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => null,
                  padding: EdgeInsets.all(12),
                  color: Colors.indigo.shade500,
                  child:
                      Text('Firmware', style: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 0.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onPressed: () => null,
                  padding: EdgeInsets.all(12),
                  color: Colors.indigo.shade500,
                  child: Text('EDM', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ));
  }
}

//class Mfooter extends StatefulWidget {
//  @override
//  _MfooterState createState() => new _MfooterState();
//}
//
//class _MfooterState extends State<Mfooter> with SingleTickerProviderStateMixin {
//  List<Tab> _tabs;
//  List<Widget> _pages;
//  static TabController _controller;
//  @override
//  void initState() {
//    super.initState();
//
//    _tabs = [
//      new Tab(
//        child: new Text(
//          "Product Description",
//          style: new TextStyle(color: Colors.black),
//        ),
//      ),
//      new Tab(
//        child: new Text(
//          "USP",
//          style: new TextStyle(color: Colors.black),
//        ),
//      ),
//      new Tab(
//        child: new Text(
//          "Feature",
//          style: new TextStyle(color: Colors.black),
//        ),
//      ),
//    ];
//    _pages = [new ProductDesc(), new Specification(), new UserReview()];
//    _controller = new TabController(
//      length: _tabs.length,
//      vsync: this,
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Column(
//      children: <Widget>[
//        new TabBar(
//          isScrollable: true,
//          controller: _controller,
//          tabs: _tabs,
//          indicatorColor: Colors.white,
//        ),
//        new Divider(
//          height: 1.0,
//        ),
//        new SizedBox.fromSize(
//          size: const Size.fromHeight(220.0),
//          child: new TabBarView(
//            controller: _controller,
//            children: _pages,
//          ),
//        ),
//      ],
//    );
//  }
//}

//class bottom extends StatelessWidget {
//  final makeBottom = Container(
//    height: 55.0,
//    child: BottomAppBar(
//      color: Color.fromRGBO(58, 66, 86, 1.0),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          IconButton(
//            icon: Icon(Icons.home, color: Colors.white),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.blur_on, color: Colors.white),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.hotel, color: Colors.white),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.account_box, color: Colors.white),
//            onPressed: () {},
//          )
//        ],
//      ),
//    ),
//  );
//  @override
//  Widget build(BuildContext context) {
//    //
//    return makeBottom;
//  }
//}

//class Mfooter extends StatefulWidget {
//  @override
//  _MfooterState createState() => new _MfooterState();
//}
//
//class _MfooterState extends State<Mfooter> with SingleTickerProviderStateMixin {
//  List<Tab> _tabs;
//  List<Widget> _pages;
//  static TabController _controller;
//  @override
//  void initState() {
//    super.initState();
//
//    _tabs = [
//      new Tab(
//        child: new Text(
//          "Product Description",
//          style: new TextStyle(color: Colors.black),
//        ),
//      ),
//      new Tab(
//        child: new Text(
//          "USP",
//          style: new TextStyle(color: Colors.black),
//        ),
//      ),
//      new Tab(
//        child: new Text(
//          "Feature",
//          style: new TextStyle(color: Colors.black),
//        ),
//      ),
//    ];
//    _pages = [new ProductDesc(), new Specification(), new UserReview()];
//    _controller = new TabController(
//      length: _tabs.length,
//      vsync: this,
//    );
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    return new Column(
//      children: <Widget>[
//        new TabBar(
//          isScrollable: true,
//          controller: _controller,
//          tabs: _tabs,
//          indicatorColor: Colors.white,
//        ),
//        new Divider(
//          height: 1.0,
//        ),
//        new SizedBox.fromSize(
//          size: const Size.fromHeight(220.0),
//          child: new TabBarView(
//            controller: _controller,
//            children: _pages,
//          ),
//        ),
//      ],
//    );
//  }
//}

//class bottom extends StatelessWidget {
//  final makeBottom = Container(
//    height: 55.0,
//    child: BottomAppBar(
//      color: Color.fromRGBO(58, 66, 86, 1.0),
//      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//        children: <Widget>[
//          IconButton(
//            icon: Icon(Icons.home, color: Colors.white),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.blur_on, color: Colors.white),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.hotel, color: Colors.white),
//            onPressed: () {},
//          ),
//          IconButton(
//            icon: Icon(Icons.account_box, color: Colors.white),
//            onPressed: () {},
//          )
//        ],
//      ),
//    ),
//  );
//  @override
//  Widget build(BuildContext context) {
//    //
//    return makeBottom;
//  }
//}
