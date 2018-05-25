import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:pizza_order_demo/selectbase.dart';
class FancyButton extends StatelessWidget{
  FancyButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: (){Navigator.push(context, new MaterialPageRoute(builder: (context)=> new SelectBase()));},
      fillColor: Colors.orangeAccent[200],
      splashColor: Colors.redAccent[100],
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const <Widget>[
          Icon(Icons.local_pizza,color: Colors.black,),
          SizedBox(width: 18.0,),
          Text("Continue",style: TextStyle(fontFamily: 'Skranji',fontSize: 25.0),)
        ],
      ),
      ),

    );
  }

}