import 'dart:io';

import 'package:flutter/material.dart';
class OrderPlaced extends StatelessWidget{


   @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Order Confirmed..!!'),
        backgroundColor: Colors.redAccent[100],
        elevation: 5.0,
        titleSpacing: 3.0,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.close), onPressed: ()=> exit(0))
        ],
      ),
      body: new Container(color: Colors.amber[100],child: new ListView(
        padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
        children: <Widget>[
          new Padding(padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0)),
          new Text('Your Order has been Placed..!!',style: new TextStyle(fontFamily: 'Skranji',fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,softWrap: true,),
          new Padding(padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 12.0)),
          new Text('Delivery Excutive will contact you shortly..!!',style: new TextStyle(fontFamily: 'Skranji',fontSize: 20.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,softWrap: true,),
          new Padding(padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 12.0)),
          new Image.asset('asset/finalimage.jpg'),
          new Padding(padding: const EdgeInsets.symmetric(horizontal: 4.0,vertical: 12.0)),
          new Text('Developed by Atul Mishra..!!',textScaleFactor: 1.5,textAlign: TextAlign.center,style: new TextStyle(fontWeight: FontWeight.bold,color: Colors.red),) ,
        ],
      )),
    );
  }

 }