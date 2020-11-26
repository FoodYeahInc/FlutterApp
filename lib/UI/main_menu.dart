import 'package:flutter/material.dart';
import 'package:foodyeah/UI/list_dishes.dart';
import 'package:foodyeah/UI/order_history.dart';
import 'package:foodyeah/model/usuario.dart';
import 'package:foodyeah/utils/http_helper.dart';
import 'package:foodyeah/utils/message_box.dart';
// Menu Principal
// Pantalla que muestra la imagen del usuario, nombres, y tiene 4 botones:
// Menu semanall, platos a la carta, historial de compras.
// Además en la parte inferior tiene el botón de sugerencias


class MainMenu extends StatelessWidget {
  final Usuario usuario;
  MainMenu({this.usuario});
  HttpHelper helper;
  @override
  Widget build(BuildContext context) {
    helper = HttpHelper();
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Principal"),
      ),
      body: _myView(context, usuario, helper),
    );
  }
}

// Reemplaza con tu codigo
Widget _myView(BuildContext context, Usuario usuario, HttpHelper helper) {
  return Center(
    child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Padding(
          padding: const EdgeInsets.all(24.0),
          child: Text("Bienvenido(a): "+usuario.firstnames+' '+usuario.lastnames)),
      // Container(
      //   height: 150,
      //   alignment: Alignment.center, // This is needed
      //   child: Image.asset(
      //     'assets/images/profile.jpg',
      //     fit: BoxFit.contain,
      //     width: 150,
      //   ),
      // ),
      ElevatedButton(
        child: Text('Menu Semanal'),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(200, 45)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {
          helper.getProductos(usuario.token, 1, 1000).then((value) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ListDishes(menu: true,usuario: usuario,dishes: value)));
          });
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>ListDishes(menu: true,usuario: usuario,dishes: value,)));
        },
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        child: Text('Platos a la Carta'),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(200, 45)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {
          helper.getProductos(usuario.token, 1, 1000).then((value) {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ListDishes(menu: false,usuario: usuario,dishes: value)));
          });

        },
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        child: Text('Historial de Compras'),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(200, 45)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>OrderHistoryWidget()));
        },
      ),
      const SizedBox(height: 8),
      ElevatedButton(
        child: Text('Ayudanos a mejorar'),
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all<Size>(Size(200, 45)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
        ),
        onPressed: () {
          return messageBox(context, "AYUDANOS A MEJORAR", "Envia un correo a ayuda@foodyeah.com para enviar tus sugrencias");
        },
      ),
      const SizedBox(height: 8),
      Text('Rol: '+usuario.rol)
      ]),
  );
}
