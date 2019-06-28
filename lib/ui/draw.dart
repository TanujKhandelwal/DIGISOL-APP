import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'support.dart';
//import 'contact.dart';
//import 'serloc.dart';

const String _AccountName = 'Tanuj Khandelwal';
const String _AccountEmail = 'tanujkh007@gmail.com';

class draw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
        child: new ListView(
               padding: const EdgeInsets.only(top: 0.0),
            children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: const Text(_AccountName,style: TextStyle(color: Colors.black87,)),
            accountEmail: const Text(_AccountEmail,style: TextStyle(color: Colors.black87,)),
            decoration: BoxDecoration(image: DecorationImage(image: new NetworkImage('https://www.digisol.com/wp-content/uploads/2018/10/DIGISOL-full-Logo-Horizontal-Original.jpg')),

            ),
//             currentAccountPicture: new CircleAvatar(
//               backgroundImage: new NetworkImage('https://cdn.pixabay.com/photo/2016/12/13/05/15/puppy-1903313__340.jpg'),
//          ),
    ),


          new ListTile(
            leading: new Icon(Icons.lightbulb_outline),
            title: new Text('Our Products'),
            onLongPress: () => null,
            //onTap: () => _onListTileTap(context),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.search),
            title: new Text('Search'),
            onLongPress: () => null,
            //onTap: () => _onListTileTap(context),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.label),
            title: new Text('Selector'),
            onLongPress: () => null,
            //onTap: () => _onListTileTap(context),
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.build),
            title: new Text('Service Location'),
            onLongPress: ()=>null,
//            onTap: () {Navigator.push( context, MaterialPageRoute (builder: (context)=>SerLoc()));},
            //onTap: () => _onListTileTap(context),
          ),
          new Divider(),
          new ListTile(
                          leading: new Icon(Icons.person),
                                   title: new Text('Support'),
                                          onLongPress: () => null,
//                           onTap: () {Navigator.push( context, MaterialPageRoute (builder: (context)=>Support()));},
             ),
          new Divider(),
          new ListTile(
            leading: new Icon(Icons.call),
            title: new Text('Contact Us'),
            onLongPress: () => null,
//            onTap: () {Navigator.push( context, MaterialPageRoute (builder: (context)=>Contact()));},
            // onTap: () => _onListTileTap(context),
          ),
        ],),);
  }
}
