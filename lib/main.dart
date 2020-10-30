import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(
      context: context,
      tiles: [
        ListTile(
          title: Text('Menu Principal'),
          onTap: () {
            print("sun");
          },
        ),
        ListTile(
          title: Text('Menu Semanal'),
          onTap: () {
            print("moon");
          },
        ),
        ListTile(
          title: Text('Platos a la Carta'),
          onTap: () {
            print("star");
          },
        ),
        ListTile(
          title: Text('Resumen de Pedido'),
          onTap: () {
            print("star");
          },
        ),
        ListTile(
          title: Text('Compra con Tarjeta'),
          onTap: () {
            print("star");
          },
        ),
        ListTile(
          title: Text('Comprobante'),
          onTap: () {
            print("star");
          },
        ),
        ListTile(
          title: Text('Historial de reservas'),
          onTap: () {
            print("star");
          },
        ),
      ]
    ).toList(),
  );
}