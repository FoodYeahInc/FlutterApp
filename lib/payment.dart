import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/services.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

// Compra con tarjeta
// Pantalla donde muestra el total del pedido(costo) y poder ingresar los datos de la tarjeta(checkbox para elegir guardar o no la tarjeta) o elegir una tarjeta guardada

class PaymentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Compra con Tarjeta"),
      ),
      body: _myView(context),
    );
  }
}


Widget _myView(BuildContext context)
{
  String card_id;
  List<String> cards = ["Tarjeta 1",
    "Tarjeta 2",
    "Tarjeta 3"];

  return Center(
    child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
      Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text("Total: S/26.00",
            style: TextStyle(fontSize: 40, color: Colors.red),)
      ),

      Container(
        width: 350,
        child: DropDownField(value: card_id,
            labelText: 'Selecciona una tarjeta',
            icon: Icon(Icons.card_giftcard),
            items: cards,
            setter: (dynamic newValue) { card_id = newValue;}
        ),
      ),


      Container(
        height: 30,
      ),

      Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text("Ingresa un nuevo método de pago")
      ),

      Container(
        width: 250.0,
        child: TextField(
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          maxLength: 16,
          decoration: new InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 5.0),
            ),
            hintText: 'Número de tarjeta',
          ),
        ),
      ),

      Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              maxLength: 6,
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 5.0),
                ),
                hintText: 'MMYYYY',
              ),
            ),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.number,
              obscureText: true,
              textAlign: TextAlign.center,
              maxLength: 3,
              decoration: new InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 5.0),
                ),
                hintText: 'CVV',
              ),
            ),
          ),
        ],
      ),

      Container(
        child: CheckboxGroup(
            labels: <String>[
              "Guardar datos para futuras compras",
            ],
            onSelected: (List<String> checked) => print(checked.toString())
        ),
      ),

      RaisedButton(
        disabledColor: Colors.amber,
        child: Text("Confirmar compra"),
        splashColor: Colors.amber,
        color: Colors.blueAccent,
        onPressed: ()  {
        },
      ),
    ]),
  );
}
