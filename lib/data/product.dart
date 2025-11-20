import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class Product {
  int id;
  @JsonKey(name: "title")
  String name;
  String description;
  String image;
  String category;
  num price;

  Product(
    this.id,
    this.name,
    this.description,
    this.image,
    this.category,
    this.price,
  );

  String getPrice() => "${price.toStringAsFixed(2)}€";

  factory Product.fromJson(Map<String, dynamic> json) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
