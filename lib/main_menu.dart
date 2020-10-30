import 'package:flutter/material.dart';

// Menu Principal
// Pantalla que muestra la imagen del usuario, nombres, y tiene 4 botones:
// Menu semanall, platos a la carta, historial de compras.
// Además en la parte inferior tiene el botón de sugerencias

class MainMenuWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Principal"),
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
          padding: const EdgeInsets.all(32.0),
          child: Text("Bienvenido(a): Elvis Nunez")
      ),
      Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: FittedBox(
            fit: BoxFit.fill, // otherwise the logo will be tiny
            child: const FlutterLogo(),
          ),
      ),
      ElevatedButton(
        child: Text('Menu Semanal'),
        onPressed: () {
          // Navigate to second route when tapped.
        },
      ),
      ElevatedButton(
        child: Text('Platos a la Carta'),
        onPressed: () {
          // Navigate to second route when tapped.
        },
      ),
      ElevatedButton(
        child: Text('Historial de Compras'),
        onPressed: () {
          // Navigate to second route when tapped.
        },
      ),
      ElevatedButton(
        child: Text('Ayudanos a mejorar'),
        onPressed: () {
          // Navigate to second route when tapped.
        },
      ),
    ]),
  );
}
