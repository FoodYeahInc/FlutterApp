import 'package:foodyeah/dish.dart';
import 'package:flutter/material.dart';

class ListDishes extends StatefulWidget {
  final bool menu;
  const ListDishes({Key key, this.menu}) : super(key: key);
  @override
  _ListDishesState createState() => _ListDishesState();
}

class _ListDishesState extends State<ListDishes> {
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
    dishes = new Dishes(widget.menu);
    return Scaffold(
      appBar: AppBar(
        title: widget.menu ? Text('Menu semanal') : Text('Platos a la carta'),
      ),
      body: buildDishes(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.shopping_cart),
          onPressed: () =>
              setState(() => null) //TODO: change void to another widget
          ),
    );
  }
}
