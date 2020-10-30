import 'package:flutter/material.dart';

// Menu Semanal
// Pantalla para mostrar los platos que se brindan en el menu semanal(y poder comprar)

class WeeklyMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Semanal"),
      ),
      body: _myView(context),
    );
  }
}

// Reemplaza con tu codigo
Widget _myView(BuildContext context) {
  return ListView();
}
