import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../product.dart';

part 'product_repository.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class ProductRepository {
  factory ProductRepository(Dio dio, {String? baseUrl}) = _ProductRepository;

  @GET('/products')
  Future<List<Product>> getProducts();

  @GET('/products/{id}')
  Future<Product> getProductById(@Path() int id);
}

/*
abstract class ProductRepository {
  static Future<List<Product>> getProducts() async {
    final response = await get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List<dynamic>)
          .map((map) => Product.fromJson(map as Map<String, dynamic>))
          .toList();
    } else {
      return Future.error("Couldn't get any data");
    }
  }

  static Future<Product> getProductById(int id) async {
    final response = await get(
      Uri.parse("https://fakestoreapi.com/products/$id"),
    );
    if (response.statusCode == 200) {
      return Product.fromJson(jsonDecode(response.body));
    } else {
      return Future.error("Couldn't get any data");
    }
  }
}
*/
