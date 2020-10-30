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
          subtitle: Text('Pantalla que muestra la imagen del usuario, nombres, y tiene 4 call-to-action \n Menu semanall, platos a la carta, historial de compras. Además en la parte inferior tiene el botón de sugerencias'),
          onTap: () {
            print("sun");
          },
        ),
        ListTile(
          title: Text('Menu Semanal'),
          subtitle: Text("Pantalla para mostrar los platos que se brindan en el menu semanal(y poder comprar)"),
          onTap: () {
            print("moon");
          },
        ),
        ListTile(
          title: Text('Platos a la Carta'),
          subtitle: Text("Pantalla para mostrar los platos de la carta (y poder comprar)"),
          onTap: () {
            print("star");
          },
        ),
        ListTile(
          title: Text('Resumen de Pedido'),
          subtitle: Text("Pantalla para visualizar los platos que se seleccionaron en menu principal o en platos a la carta, con un detalle del dinero, fecha actual y la capacidad de volver a las anteriores vistas(sea menu semanal o platos a la carta) (ademas de pagar)"),
          onTap: () {
            print("star");
          },
        ),
        ListTile(
          title: Text('Compra con Tarjeta'),
          subtitle: Text("Pantalla donde muestra el total del pedido(costo) y poder ingresar los datos de la tarjeta(checkbox para elegir guardar o no la tarjeta) o elegir una tarjeta guardada"),
          onTap: () {
            print("star");
          },
        ),
        ListTile(
          title: Text('Comprobante'),
          subtitle: Text("Muestra un codigo QR validando la compra, además muestra los datos de: \n Estado del pedido(entregado, pendiente) \n fecha de compra/entrega \n Boton para aceptar"),
          onTap: () {
            print("star");
          },
        ),
        ListTile(
          title: Text('Historial de reservas'),
          subtitle: Text("Listado de platillos que han sido comprados para después(reservados)"),
          onTap: () {
            print("star");
          },
        ),
      ]
    ).toList(),
  );
}