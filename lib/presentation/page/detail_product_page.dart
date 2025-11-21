import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shopazon/data/repository/product_repository.dart';

class DetailProductPage extends StatelessWidget {
  final int idProduct;

  const DetailProductPage(this.idProduct, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appbarTitle')),
      body: FutureBuilder(
        future: ProductRepository(Dio()).getProductById(idProduct),
        builder: (context, asyncSnapshot) {
          //asyncSnapshot.data
          return Column(
            children: [
              //Image du produit
              //Row => Titre du produit & Prix
              //Description du produit
              //Spacer()
              //Un bouton pour ajouter au panier
            ],
          );
        },
      ),
    );
  }
}
