import 'package:flutter/material.dart';
import 'package:shopazon/data/product.dart';

class ItemListProdct extends StatelessWidget {
  const ItemListProdct({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      title: Text(product.name, maxLines: 3, overflow: TextOverflow.ellipsis),
      subtitle: Text(
        product.getPrice(),
        style: Theme.of(context).textTheme.titleLarge,
      ),
      leading: Image.network(product.image, width: 60),
      trailing: TextButton(child: Text("AJOUTER"), onPressed: () {}),
    );
  }
}
