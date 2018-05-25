import 'package:flutter/material.dart';
import 'package:pizza_order_demo/orderplaced.dart';
import 'package:pizza_order_demo/shopselection.dart';
class SelectBase extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(title: new Text('Select pizza Base..!!',style: new TextStyle(fontFamily: 'Skranji',fontWeight: FontWeight.bold),),
    backgroundColor: Colors.redAccent[100],

    ),
    body: new Builder(
      builder: (BuildContext context){
        return new Center(
          child: new Container(
            color: Colors.yellow[100],
            child: new ListView(
              //color: Colors.yellow[100],
              padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 5.0),
              shrinkWrap: true,
              addRepaintBoundaries: true,
              children: <Widget>[
                new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Card(
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Container(
                                child: new Image.asset('asset/thickcrust.jpg',fit: BoxFit.fitWidth,),
                              )
                            ],
                          ),
                          const ListTile(
                            //leading: const Image.asset(const AssetImage('asset/thincrust')),
                          //  leading: const ImageIcon(const AssetImage('asset/thickcrust.jpg'),size: 3.0,),
                            title: const Text('Thick Crust..!!'),
                            subtitle: const Text('Seasoning will be over this base..!!'),
                            enabled: true,
                            onTap: null,
                            onLongPress: null,
                          ),
                          new ButtonTheme.bar(
                            child: new ButtonBar(
                              children: <Widget>[
                                new FlatButton(onPressed: (){
                                  final snackBar = new SnackBar(content: new Text('+1'),
                                    action: new SnackBarAction(label: 'Undo', onPressed: (){}),
                                  );
                                  Scaffold.of(context).showSnackBar(snackBar);
                                }, child: new Icon(Icons.add)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Card(
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                child: new Image.asset('asset/thincrust.jpeg',fit: BoxFit.fitWidth,width: 550.0,),
                              )
                            ],
                          ),
                          const ListTile(
                            //leading: const Image.asset(const AssetImage('asset/thincrust')),
                          //  leading: const ImageIcon(const AssetImage('asset/thincrust.jpeg'),size: 3.0,),
                            title: const Text('Thin Crust..!!'),
                            subtitle: const Text('Seasoning will be over this base..!!'),
                            enabled: true,
                            onTap: null,
                            onLongPress: null,
                          ),
                          new ButtonTheme.bar(
                            child: new ButtonBar(
                              children: <Widget>[
                                new FlatButton(onPressed: (){final snackBar = new SnackBar(content: new Text('+1'),
                                  action: new SnackBarAction(label: 'Undo', onPressed: (){}),
                                );
                                Scaffold.of(context).showSnackBar(snackBar);
                                }, child: new Icon(Icons.add)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Card(
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Container(
                                child: new Image.asset('asset/focaccia.jpeg',fit: BoxFit.fitWidth,width: 550.0,),
                              )
                            ],
                          ),
                          const ListTile(
                            //leading: const Image.asset(const AssetImage('asset/thincrust')),
                           // leading: const ImageIcon(const AssetImage('asset/focaccia.jpeg'),size: 3.0,),
                            title: const Text('Focaccia Crust..!!'),
                            subtitle: const Text('Seasoning will be over this base..!!'),
                            enabled: true,
                            onTap: null,
                            onLongPress: null,
                          ),
                          new ButtonTheme.bar(
                            child: new ButtonBar(
                              children: <Widget>[
                                new FlatButton(onPressed: (){final snackBar = new SnackBar(content: new Text('+1'),
                                  action: new SnackBarAction(label: 'Undo', onPressed: (){}),
                                );
                                Scaffold.of(context).showSnackBar(snackBar);
                                }, child: new Icon(Icons.add)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Card(
                      child: new Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new Container(
                                child: new Image.asset('asset/flatbread.jpeg',fit: BoxFit.fill,width: 550.0,height: 250.0,),
                              )
                            ],
                          ),
                          const ListTile(
                            //leading: const Image.asset(const AssetImage('asset/thincrust')),
                           // leading: const Image.asset(const AssetImage('asset/flatbread.jpeg'),size: 15.0,),
                            title: const Text('Flat Bread Crust..!!'),
                            subtitle: const Text('Seasoning will be over this base..!!'),
                            enabled: true,
                            onTap: null,
                            onLongPress: null,
                          ),
                          new ButtonTheme.bar(
                            child: new ButtonBar(
                              children: <Widget>[
                                new FlatButton(onPressed: (){final snackBar = new SnackBar(content: new Text('+1'),
                                  action: new SnackBarAction(label: 'Undo', onPressed: (){}),
                                );
                                Scaffold.of(context).showSnackBar(snackBar);
                                }, child: new Icon(Icons.add)),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0)),
                    new Center(child: new RaisedButton(splashColor: Colors.amber,color: Colors.redAccent[100],onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(builder: (context)=> new ShopSelection()));
                    },child: new Text('Select Shop..!!',textAlign: TextAlign.center,style: new TextStyle(fontFamily: 'Skranji',fontSize: 18.0,color: Colors.black),),padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0),)),
                    new Padding(padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 8.0)),
                  ],
                ),
              ],
            ),
          ),
        );
      },

    ),
  );
  }

}