import 'package:flutter/material.dart';
import 'package:foodyeah/UI/order_summary.dart';
import 'package:foodyeah/model/dish.dart';
import 'package:foodyeah/model/usuario.dart';
import 'package:foodyeah/utils/http_helper.dart';
//Para ver los platos a la carta y los platos del menu principal
class ListDishes extends StatefulWidget {
  final bool menu;
  final Usuario usuario;
  final ListaProducto dishes;
  const ListDishes({Key key, this.menu, this.usuario, this.dishes}) : super(key: key);
  @override
  _ListDishesState createState() => _ListDishesState();
}

class _ListDishesState extends State<ListDishes> {
  HttpHelper helper;
  @override
  void initState(){
    helper = HttpHelper();
    //initialize
    super.initState();
  }
  Widget buildDishes() {
    return ListView.builder(
        padding: EdgeInsets.all(16),
        itemBuilder: (BuildContext context, int i) {
          if (i < widget.dishes.length() * 2) {
            if (i.isOdd) return Divider();
            final int index = i ~/ 2;
            return buildrow(widget.dishes.getDish(index));
          } else {
            return null;
          }
        });
  }

  Widget buildrow(Dish dish) {
    return ListTile(
        title: Text(dish.productName),
        leading: Column(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(dish.imageUrl),
            ),
            Text('S/.' + dish.productPrice.toString()),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            dish.quantity != 0
                ? new IconButton(
                    icon: new Icon(Icons.remove),
                    onPressed: () => setState(() => dish.quantity--),
                  )
                : new Container(),
            new Text(dish.quantity.toString()),
            new IconButton(
                icon: new Icon(Icons.add),
                onPressed: () => setState(() => dish.quantity++))
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.menu ? Text('Menu semanal') : Text('Platos a la carta'),
      ),
      body: buildDishes(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_cart),
          onPressed: () =>
          Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrderSummary())
              )
          ),
    );
  }
}
