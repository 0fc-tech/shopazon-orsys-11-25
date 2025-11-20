import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopazon/data/cart.dart';
import 'package:shopazon/data/product.dart';

class ItemListProdct extends StatelessWidget {
  const ItemListProdct({super.key, required this.product, this.addMode = true});

  final bool addMode;
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
      trailing: TextButton(
        child: Text(addMode ? "AJOUTER" : "RETIRER"),
        onPressed: () {
          addMode
              ? context.read<Cart>().addItem(product)
              : context.read<Cart>().removeItem(product);
        },
      ),
    );
  }
}
