import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/product.dart';
import 'widget/item_list_product.dart';

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
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ItemListProdct(product: product);
        },
        separatorBuilder: (_, __) => Divider(thickness: 1, height: 0),
      ),
    );
  }
}
