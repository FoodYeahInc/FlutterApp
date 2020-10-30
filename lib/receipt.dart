import 'package:flutter/material.dart';

// Comprobante
// Muestra un codigo QR validando la compra, además muestra los datos de:
// Estado del pedido(entregado, pendiente)
// fecha de compra/entrega
// Boton para aceptar

class ReceiptWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Comprobante"),
      ),
      body: _myView(context),
    );
  }
}

// Reemplaza con tu codigo
Widget _myView(BuildContext context) {
  return Center(
    child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Comprobante",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
            "Para adquirir su pedido, espere la notificación y muestre el código QR en el mostrador"),
      ),
      Container(
        height: 150,
        alignment: Alignment.center, // This is needed
        child: Image.asset(
          'assets/images/qr.png',
          fit: BoxFit.contain,
          width: 150,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("Estado: Pendiente"),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Comprado con tarjeta"),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("XXXX - XXXX - XXXX - NNNN"),
      ),
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text("Fecha: DD/MM/AAAA"),
      ),
      ElevatedButton(
        child: Text('Aceptar'),
        style: ElevatedButton.styleFrom(
          primary: Colors.black,
          onPrimary: Colors.white,
          onSurface: Colors.grey,
        ),
        onPressed: () {
          // Navigate to second route when tapped.
        },
      ),
    ]),
  );
}
