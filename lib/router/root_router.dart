import "package:flutter/material.dart";
import "package:go_router/go_router.dart";
import "package:shopazon/presentation/page/cart_page.dart";
import "package:shopazon/presentation/page/list_product/list_products_page.dart";

GoRouter rootRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (_, _) => ListProductsPage(),
      routes: [
        GoRoute(path: "cart", builder: (_, _) => CartPage()),
        GoRoute(path: "detail", builder: (_, _) => Placeholder()),
      ],
    ),
  ],
);
