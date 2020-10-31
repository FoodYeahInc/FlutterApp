
class Order {
  final String dish;
  final double price;
  final String date;
  const Order({this.dish, this.price, this.date});
}

const Orders = const <Order>[
  const Order(
    dish: "Pollo al horno",
    price: 15.00,
    date: "2020-10-10"
  ),

  const Order(
      dish: "Lomo Saltado",
      price: 16.00,
      date: "2020-10-11"
  ),
];