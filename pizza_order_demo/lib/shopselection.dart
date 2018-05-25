import 'package:flutter/material.dart';
import 'package:pizza_order_demo/orderplaced.dart';
class ShopSelection extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: new Text('Select your Shop..!!'),backgroundColor: Colors.redAccent[100],),
      body: new Container(
        color: Colors.yellow[100],
        child: new Column(
          children: <Widget>[
            new Padding(padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 15.0)),
            new Text('A List of Shops will be displayed here to select your pizza and Place Order..!!',style: new TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),textAlign: TextAlign.center,),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 22.0,horizontal: 15.0)),
            new Image.asset('asset/shoppagepizza.jpeg',fit: BoxFit.fill,),
            new Padding(padding: const EdgeInsets.symmetric(vertical: 22.0,horizontal: 15.0)),
            new RaisedButton(onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new OrderPlaced()));},child: new Text('Place My Order..!!',textScaleFactor: 2.0,),color: Colors.greenAccent[100],padding: const EdgeInsets.all(12.0),splashColor: Colors.redAccent[100],),

          ],
        )
      ),
    );
  }

}