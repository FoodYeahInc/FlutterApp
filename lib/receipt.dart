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
      appBar: AppBar(
        title: Text("Comprobante"),
      ),
      body: _myView(context),
    );
  }
}

// Reemplaza con tu codigo
Widget _myView(BuildContext context) {
  return ListView();
}
