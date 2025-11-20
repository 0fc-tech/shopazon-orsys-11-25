import 'dart:convert';

import '../product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts() async {
    //Récupérer la liste de produits depuis l'API https://fakestoreapi.com/products

    //Parser et désérialiser la réponse en une liste de produits
    final listProducts = (jsonDecode(response.body) as List<dynamic>)
        .map((map) => Product.fromJson(map as Map<String, dynamic>))
        .toList();
    //jsonDecode
    // Fonction fromJson du Product

    //Retourner soit une erreur (Future.errror()) ou la liste de Produits désérialisée
  }

  //Product getById(int id) {}
}
