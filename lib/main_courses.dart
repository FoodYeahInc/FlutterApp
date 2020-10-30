import 'package:flutter/material.dart';

// Platos a la carta
// Pantalla para mostrar los platos de la carta(y poder comprar)

class MainCoursesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Platos a la Carta"),
      ),
      body: _myView(context),
    );
  }
}

// Reemplaza con tu codigo
Widget _myView(BuildContext context) {
  return ListView();
}
