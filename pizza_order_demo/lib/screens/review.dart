import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pizza_order_demo/fancybutton.dart';
import 'package:pizza_order_demo/pizza.dart';
import 'package:pizza_order_demo/selectbase.dart';

class Review extends StatelessWidget{
      Pizza _pizzaorder;
      List<String> _list = new List<String>();

      Review({order : null}){
        _pizzaorder=order;
        
        _list.add("Size: ${_pizzaorder.size}");
        _list.add(" ");
        _list.add("Toppings: ");

        _pizzaorder.toppings.forEach((String name, bool value){
          if(value) _list.add(name);

        });
      }





  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(
        backgroundColor: Colors.redAccent[100],
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.close), onPressed: ()=> exit(0),tooltip: 'Close The app..!!',splashColor: Colors.black,),
        ],
        title: new Text('Review your Order..!!',style: new TextStyle(fontFamily: 'Skranji',fontWeight: FontWeight.bold),),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text('Please go through order once Again to avoid any confusion..!!',style: new TextStyle(fontFamily: 'Ubuntu',letterSpacing: 2.0,fontSize: 18.0),textAlign: TextAlign.center,),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 12.0)),
            new Expanded(child: new ListView.builder(itemCount: _list.length,shrinkWrap: true,itemBuilder: (BuildContext context,int index){
              return new Text(_list.elementAt(index),softWrap: true,style: new TextStyle(fontSize: 22.0,fontWeight: FontWeight.bold,fontFamily: 'Lobster'),textAlign: TextAlign.center,);

            })),
           /* new FlatButton(child: new Text('ok'),onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new SelectBase()));},
            ),*/
            new FancyButton(      onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new SelectBase()));},
            ),

          ],
        ),
      ),

    );
  }
}