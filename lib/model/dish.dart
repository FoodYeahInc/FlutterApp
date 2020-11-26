class ListaProducto {
  bool hasItems;
  List<Dish> items;
  int total;
  int page;
  int pages;

  ListaProducto({this.hasItems, this.items, this.total, this.page, this.pages});
  List<Dish> getItems(){
    return items;
  }
  ListaProducto.fromJson(Map<String, dynamic> json) {
    hasItems = json['hasItems'];
    if (json['items'] != null) {
      items = new List<Dish>();
      json['items'].forEach((v) {
        items.add(new Dish.fromJson(v));
      });
    }
    total = json['total'];
    page = json['page'];
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hasItems'] = this.hasItems;
    if (this.items != null) {
      data['items'] = this.items.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['page'] = this.page;
    data['pages'] = this.pages;
    return data;
  }
  Dish getDish(int index) {
    if (index >= items.length) {
      return items.last;
    } else if (index < 0) {
      return items.first;
    } else {
      return items[index];
    }
  }
  double getTotal(){
    double total = 0;
    //items.forEach((element) => total+=(element.price*element.quantity));
    return total;
  }
  int length() {
    return items.length;
  }
}

class Dish {
  int productId;
  ProductCategory productCategory;
  String productName;
  double productPrice;
  int sellDay;
  int stock;
  String imageUrl;
  int quantity;
  List<String> ingredients;

  Dish(
      {this.productId,
      this.productCategory,
      this.productName,
      this.productPrice,
      this.sellDay,
      this.stock,
      this.imageUrl,
      this.ingredients, 
      this.quantity});

  Dish.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    productCategory = json['product_Category'] != null
        ? new ProductCategory.fromJson(json['product_Category'])
        : null;
    productName = json['productName'];
    productPrice = json['productPrice'];
    sellDay = json['sellDay'];
    stock = json['stock'];
    imageUrl = json['imageUrl'];
    ingredients = json['ingredients'].cast<String>();
    quantity = 0;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    if (this.productCategory != null) {
      data['product_Category'] = this.productCategory.toJson();
    }
    data['productName'] = this.productName;
    data['productPrice'] = this.productPrice;
    data['sellDay'] = this.sellDay;
    data['stock'] = this.stock;
    data['imageUrl'] = this.imageUrl;
    data['ingredients'] = this.ingredients;
    return data;
  }
}

class ProductCategory {
  int productCategoryId;
  String productCategoryName;
  String productCategoryDescription;

  ProductCategory(
      {this.productCategoryId,
      this.productCategoryName,
      this.productCategoryDescription});

  ProductCategory.fromJson(Map<String, dynamic> json) {
    productCategoryId = json['product_CategoryId'];
    productCategoryName = json['product_CategoryName'];
    productCategoryDescription = json['product_CategoryDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_CategoryId'] = this.productCategoryId;
    data['product_CategoryName'] = this.productCategoryName;
    data['product_CategoryDescription'] = this.productCategoryDescription;
    return data;
  }
}