import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopazon/router/root_router.dart';

import 'data/cart.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => Cart(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      routerConfig: rootRouter,
    );
  }
}
