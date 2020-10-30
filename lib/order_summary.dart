import 'package:foodyeah/dish.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatefulWidget {
  @override
  _OrderSummaryState createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  Dishes dishes;
  Widget buildDishes() {
    return ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (BuildContext context, int i) {
          if (i < dishes.length() * 2) {
            if (i.isOdd) return Divider();
            final int index = i ~/ 2;
            return buildrow(dishes.getDish(index));
          } else {
            return null;
          }
        });
  }

  Widget buildrow(Dish dish) {
    return ListTile(
        title: Text(dish.name),
        subtitle: dish.description == null ? null : Text(dish.description),
        leading: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(dish.image),
            ),
            Text('S/.' + dish.price.toString()),
          ],
        ),
        //Aqui ya tiene que llegar con platos(dishes)
        trailing: Text(dish.quantity.toString()));
  }

  @override
  Widget build(BuildContext context) {
    dishes = new Dishes(false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Vista previa del pedido'),
      ),
      body: new Column(        
        children: [
          Flexible(child: buildDishes(), flex: 3),
          Flexible(
            flex: 2,
            child: Column(
              children: [
                Container(height:20),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Total de la compra: '),
                    Text(
                      dishes.getTotal().toString(),
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                )),
                Container(height: 25),
                RaisedButton(
                  child: Text('Agregar menus'),
                  onPressed: () => setState(() => null),
                ),
                RaisedButton(
                  child: Text('Agregar platos a la carta'),
                  onPressed: () => setState(() => null),
                ),
                RaisedButton(
                  child: Text('Realizar pago'),
                  onPressed: () => setState(() => null),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
