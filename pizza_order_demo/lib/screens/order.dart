import 'package:flutter/material.dart';
import 'package:pizza_order_demo/pizza.dart';
import 'package:pizza_order_demo/screens/review.dart';

class Order extends StatefulWidget{
  @override
  _OrderState createState()=> new _OrderState();
}

class _OrderState extends State<Order> {
  Pizza _pizzaorder = new Pizza();

  void _setSize(String value){
    setState(() {
       _pizzaorder.size=value;
    });
  }

  void _setToppings(int index,bool value){
    setState(() {
       String key = _pizzaorder.toppings.keys.elementAt(index);
       _pizzaorder.toppings[key]=value;
    });
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: new AppBar(
        title: new Text('Place your Order',style: new TextStyle(fontWeight: FontWeight.bold,fontFamily: 'Skranji'),),
        backgroundColor: Colors.redAccent[100],
      ),
      body: new Center(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Select your Pizza Size..!!',textAlign: TextAlign.center,style: new TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,fontFamily: 'Ubuntu',letterSpacing: 2.0),),
              new Padding(padding: const EdgeInsets.symmetric(vertical: 20.0)),
              new DropdownButton<String>(
                value: _pizzaorder.size,
                  items: Pizza.sizes.map((String value){
                    return new DropdownMenuItem(
                        value: value,
                        child: new Row(
                      children: <Widget>[
                        new Icon(Icons.local_pizza),
                        new Text(' ${value}',style: new TextStyle(fontFamily: 'Skranji',fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ],
                    ));
                  }).toList(),
                  onChanged: (String value){_setSize(value);},
              ),
              new Expanded(child: new ListView.builder(
                  itemCount: _pizzaorder.toppings.length,
                  itemBuilder: (BuildContext context,int index){
                    return new CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                        title:new Text( _pizzaorder.toppings.keys.elementAt(index)),
                        value: _pizzaorder.toppings.values.elementAt(index),
                        onChanged: (bool value){_setToppings(index, value);});
                  })),
              new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0)),
              new RaisedButton(
                  child: new Text('Proceed..!!',style: new TextStyle(fontFamily: 'Skranji',fontSize: 15.0,color: Colors.red,fontWeight: FontWeight.bold),),
                  onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new Review(order: _pizzaorder,)));})
              
            ],
          ),
        ),
      ),
    );

  }

}