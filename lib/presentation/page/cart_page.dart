import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Panier Shopazon"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
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
      ),
    );
  }
}
