import 'package:flutter/material.dart';

// Historial de Reservas
// Listado de platillos que han sido comprados para después(reservados)

class OrderHistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Historial de Reservas"),
      ),
      body: _myView(context),
    );
  }
}

// Reemplaza con tu codigo
Widget _myView(BuildContext context) {
  return ListView();
}
