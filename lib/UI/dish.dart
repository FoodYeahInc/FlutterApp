//Para los widgets:
//ResumenPedido.dart
//
class Dish {
  double price;
  String name;
  String image;
  String description;
  int quantity;
  Dish({this.name, this.price, this.image, this.quantity, this.description});
}

class Dishes {
  List<Dish> dishes;
  Dishes(bool menu) {
    dishes = new List<Dish>();
    if (!menu) {
      dishes.add(new Dish(
          image:
              "https://t2.rg.ltmcdn.com/es/images/3/0/6/pollo_al_horno_peruano_73603_orig.jpg",
          price: 12.0,
          name: "Pollo al horno",
          description: null,
          quantity: 2));
      dishes.add(new Dish(
          image:
              "https://cdn.cuponidad.pe/images/Deals/Comixs-Polloalabrasa2.jpg",
          price: 12.0,
          name: "Pollo a la brasa",
          description: null,
          quantity: 3));
      dishes.add(new Dish(
          image:
              "https://www.comedera.com/wp-content/uploads/2013/10/aji-de-gallina.jpg?width=1200&enable=upscale",
          price: 12.0,
          name: "Aji de gallina",
          description: null,
          quantity: 1));
      dishes.add(new Dish(
          image:
              "https://img-global.cpcdn.com/recipes/3e3b4f7266ec102e/1200x630cq70/photo.jpg",
          price: 12.0,
          name: "Lomo saltado",
          description: null,
          quantity: 0));
      dishes.add(new Dish(
          image:
              "https://img-global.cpcdn.com/recipes/3e3b4f7266ec102e/1200x630cq70/photo.jpg",
          price: 12.0,
          name: "plato1",
          description: null,
          quantity: 0));
      dishes.add(new Dish(
          image:
              "https://img-global.cpcdn.com/recipes/3e3b4f7266ec102e/1200x630cq70/photo.jpg",
          price: 12.0,
          name: "plato2",
          description: null,
          quantity: 0));
      dishes.add(new Dish(
          image:
              "https://img-global.cpcdn.com/recipes/3e3b4f7266ec102e/1200x630cq70/photo.jpg",
          price: 12.0,
          name: "plato3",
          description: null,
          quantity: 0));
      dishes.add(new Dish(
          image:
              "https://img-global.cpcdn.com/recipes/3e3b4f7266ec102e/1200x630cq70/photo.jpg",
          price: 12.0,
          name: "plato4",
          description: null,
          quantity: 0));
    } else {
      dishes.add(new Dish(
          image:
              "https://t2.rg.ltmcdn.com/es/images/3/0/6/pollo_al_horno_peruano_73603_orig.jpg",
          price: 6.5,
          name: "Menu estudiantil",
          description: "Acompañamiento: Pan, Postre: Piña en rodajas, Entrada: Sopa/ensalada, Segundo: Aji de gallina, Bebida: Jugo de fresa",
          quantity: 0));
      dishes.add(new Dish(
          image:
              "https://cdn.cuponidad.pe/images/Deals/Comixs-Polloalabrasa2.jpg",
          price: 8.5,
          name: "Menu ejecutivo",
          description: "Acompañamiento: Pan, Postre: Piña en rodajas, Entrada: Sopa/ensalada, Segundo: Pollo a la brasa, Bebida: Jugo de fresa",
          quantity: 0));
      dishes.add(new Dish(
          image:
              "https://img-global.cpcdn.com/recipes/3e3b4f7266ec102e/1200x630cq70/photo.jpg",
          price: 6.5,
          name: "Menu vegetariano",
          description: "Acompañamiento: Pan, Postre: Piña en rodajas, Entrada: Sopa/ensalada, Segundo: Hamburguesa de soja, Bebida: Jugo de fresa",
          quantity: 0));
    }
  }
  Dish getDish(int index) {
    if (index >= dishes.length) {
      return dishes.last;
    } else if (index < 0) {
      return dishes.first;
    } else {
      return dishes[index];
    }
  }
  double getTotal(){
    double total = 0;
    dishes.forEach((element) => total+=(element.price*element.quantity));
    return total;
  }
  int length() {
    return dishes.length;
  }
}
