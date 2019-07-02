import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './product_page.dart';



class tile_view extends StatelessWidget{
  String name;
  String des;
  String imag;

  tile_view(this.name,this.des,this.imag);

  @override
  Widget build(BuildContext context) {



    return InkWell(
      child: Card(color: Colors.grey.shade100,
        child: Container(padding: EdgeInsets.only(top: 15.0,bottom: 15.0,right: 0,left: 0) ,
            child: Column(
              children: <Widget>[Container(
                child: ListTile(
                  leading: Image(image:NetworkImage(imag),),
                  title: Text(name,textAlign: TextAlign.center,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                ),
              ),
                Divider(color: Colors.grey,),
                Container(
                  child: Text(des,textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400),),
                ),

              ],
            )

        ),
      ),onTap:(){Navigator.push( context, MaterialPageRoute (builder: (context)=>Product()));
      } ,splashColor: Colors.grey,
    );
  }
}