import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopazon/data/cart.dart';

import 'list_product/widget/item_list_product.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panier Shopazon"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: context.watch<Cart>().items.isEmpty ? EmptyCart() : FilledCart(),
    );
  }
}

String showPriceCart(BuildContext context) {
  final cart = context.watch<Cart>();
  final price = cart.items.fold(
    0 as num,
    (prev, actuel) => prev + actuel.price,
  );
  return price.toStringAsFixed(2) + "€";
}

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Votre est panier total est de "),
              Spacer(),
              Text("0.00€", style: Theme.of(context).textTheme.titleMedium),
            ],
          ),
        ),
        Spacer(),
        Text('Votre panier est acutellement vide'),
        Icon(Icons.image),
        Spacer(),
      ],
    );
  }
}

class FilledCart extends StatelessWidget {
  const FilledCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Votre est panier total est de "),
              Spacer(),
              Text(
                showPriceCart(context),
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: context.watch<Cart>().itemCount,
            itemBuilder: (context, index) {
              final product = context.watch<Cart>().items[index];
              return ItemListProdct(product: product);
            },
            separatorBuilder: (_, __) => Divider(thickness: 1, height: 0),
          ),
        ),
      ],
    );
  }
}
