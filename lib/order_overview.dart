import 'package:flutter/material.dart';

// Resumen del Pedido
// Pantalla para visualizar los platos que se seleccionaron en menu principal o en platos a la carta, con un detalle del dinero, fecha actual y la capacidad de volver a las anteriores vistas(sea menu semanal o platos a la carta) (ademas de pagar)

class OrderOverviewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resumen del Pedido"),
      ),
      body: _myView(context),
    );
  }
}

// Reemplaza con tu codigo
Widget _myView(BuildContext context) {
  return ListView();
}
