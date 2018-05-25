import 'package:flutter/material.dart';
import 'package:pizza_order_demo/screens/order.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(backgroundColor: Colors.redAccent[100],title: new Text('Pizza Home..!!',style: new TextStyle(fontFamily: 'Skranji',fontWeight: FontWeight.bold),),),
      body: new Container(
        padding: const EdgeInsets.symmetric(vertical: 45.0,horizontal: 65.0),
        child: new Column(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.symmetric(vertical: 12.0)),
            new Text('Welcome to the Pizza Shop..!!',style: new TextStyle(fontFamily: 'Ubuntu',fontSize: 25.0,letterSpacing: 2.0,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 12.0)),
            new Image.asset('asset/pizza1.jpeg',fit: BoxFit.fitWidth,),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 12.0)),
            new RaisedButton(color: Colors.redAccent[100],onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Order()));},
            child: new Text('Take My Order..!!',textScaleFactor: 2.0,style: new TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Ubuntu'),),
              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal:19.0),
              splashColor: Colors.lightBlueAccent,
              elevation: 4.0,
            )
          ],
        ),
      ),
    );
  }

}