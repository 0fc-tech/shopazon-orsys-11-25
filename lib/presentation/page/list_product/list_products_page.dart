import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shopazon/data/cart.dart';
import 'package:shopazon/data/repository/product_repository.dart';
import 'package:shopazon/presentation/page/list_product/widget/listview_products.dart';

class ListProductsPage extends StatelessWidget {
  ListProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbarTitle'),
        actions: [
          IconButton(
            onPressed: () {
              context.go("/cart");
            },
            icon: Badge(
              label: Text("${context.watch<Cart>().itemCount}"),
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: FutureBuilder(
        future: ProductRepository(Dio()).getProducts(),
        builder: (context, asyncSnapshot) {
          if (asyncSnapshot.hasData && asyncSnapshot.data != null) {
            return ListViewProducts(products: asyncSnapshot.data!);
          } else if (asyncSnapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return Center(child: Icon(Icons.error));
        },
      ),
    );
  }
}
