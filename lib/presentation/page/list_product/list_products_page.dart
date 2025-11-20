import 'package:flutter/material.dart';

import '../../../data/product.dart';
import 'widget/item_list_product.dart';

class ListProductsPage extends StatelessWidget {
  ListProductsPage({super.key});

  List<Product> products = [
    Product(
      "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_t.png",
      "men's clothing",
      109.95,
    ),
    Product(
      "Mens Casual Premium Slim Fit T-Shirts ",
      "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
      "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_t.png",
      "men's clothing",
      22.3,
    ),
    Product(
      "Mens Cotton Jacket",
      "great outerwear sauble for the fall or winter, softshell jacket is cozy, lightweight and will keep you warm has a 3 layer construction",
      "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_t.png",
      "men's clothing",
      55.99,
    ),
    Product(
      "Mens Casual Slim Fit",
      "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
      "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_t.png",
      "men's clothing",
      15.99,
    ),
    Product(
      "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
      "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.",
      "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_t.png",
      "jewelery",
      695.0,
    ),
    Product(
      "Solid Gold Petite Micropave ",
      "Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed.",
      "https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_t.png",
      "jewelery",
      168.0,
    ),
    Product(
      "White Gold Plated Princess",
      "Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to show your love and affection",
      "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_t.png",
      "jewelery",
      9.99,
    ),
    Product(
      "Pierced Owl Rose Gold Plated Stainless Steel Double",
      "Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel",
      "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_t.png",
      "jewelery",
      10.99,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbarTitle'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
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
