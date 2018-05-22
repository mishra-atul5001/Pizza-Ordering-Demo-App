import 'package:flutter/material.dart';

class Pizza{
  static List<String> sizes = <String>["Small","Medium","Large"];
  String size = sizes.elementAt(0);
  Map<String,bool> toppings = new Map<String,bool>();
  Pizza(){
    toppings.putIfAbsent("Capsicums", ()=> false);
    toppings.putIfAbsent("Carrots", ()=> false);
    toppings.putIfAbsent("Oregano", ()=> false);
    toppings.putIfAbsent("Parmeson", ()=> false);
    toppings.putIfAbsent("Pepperoni", ()=> false);
    toppings.putIfAbsent("Olives", ()=> false);
    toppings.putIfAbsent("Onions", ()=> false);
    toppings.putIfAbsent("Tomatoes", ()=> false);
    toppings.putIfAbsent("Mushrooms", ()=> false);
    toppings.putIfAbsent("Pineapple", ()=> false);
    toppings.putIfAbsent("Extra Cheese", ()=> false);
    toppings.putIfAbsent("Sausages", ()=> false);
  }


}