import "package:go_router/go_router.dart";
import "package:shopazon/presentation/page/cart_page.dart";
import "package:shopazon/presentation/page/detail_product_page.dart";
import "package:shopazon/presentation/page/list_product/list_products_page.dart";

GoRouter rootRouter = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (_, _) => ListProductsPage(),
      routes: [
        GoRoute(path: "cart", builder: (_, _) => CartPage()),
        GoRoute(
          path: "detail/:idProduct",
          builder: (_, state) =>
              DetailProductPage(int.parse(state.pathParameters["idProduct"]!)),
        ),
      ],
    ),
  ],
);
