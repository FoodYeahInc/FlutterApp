import 'package:flutter/material.dart';
import 'package:foodyeah/main_menu.dart';
import 'package:foodyeah/order_history.dart';
import 'package:foodyeah/payment.dart';
import 'package:foodyeah/receipt.dart';
import 'package:foodyeah/list_dishes.dart';
import 'package:foodyeah/login.dart';
import 'package:foodyeah/order_summary.dart';
void main() => runApp(MaterialApp(title: "Widgets", home: MyApp(), theme: ThemeData(primaryColor: Colors.red)));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('FoodYeah!')),
        body: ListView(children: <Widget>[
          ListTile(
            title: Text('Login'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Login()),
              );
            },
          ),
          ListTile(
            title: Text('Menu Principal'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainMenuWidget()),
              );
            },
          ),
          ListTile(
            title: Text('Menu Semanal'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListDishes(menu: true,)),
              );
            },
          ),
          ListTile(
            title: Text('Platos a la Carta'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListDishes(menu: false,)),
              );
            },
          ),
          ListTile(
            title: Text('Resumen de Pedido'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderSummary()),
              );
            },
          ),
          ListTile(
            title: Text('Compra con Tarjeta'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PaymentWidget()),
              );
            },
          ),
          ListTile(
            title: Text('Comprobante'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ReceiptWidget()),
              );
            },
          ),
          ListTile(
            title: Text('Historial de reservas'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderHistoryWidget()),
              );
            },
          ),          
        ]));
  }
}
