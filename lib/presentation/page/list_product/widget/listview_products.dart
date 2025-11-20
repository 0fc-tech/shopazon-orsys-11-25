import 'package:flutter/material.dart';

import '../../../../data/product.dart';
import 'item_list_product.dart';

class ListViewProducts extends StatelessWidget {
  final List<Product> products;

  const ListViewProducts({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return ItemListProdct(product: product);
      },
      separatorBuilder: (_, __) => Divider(thickness: 1, height: 0),
    );
  }
}
