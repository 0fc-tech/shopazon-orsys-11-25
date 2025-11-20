class Product {
  String name;
  String description;
  String image;
  String category;
  //Regroupe entiers et double
  num price;

  Product(this.name, this.description, this.image, this.category, this.price);
  // => retourner le prix 2.00€
  String getPrice() => "${price.toStringAsFixed(2)}€";
}
