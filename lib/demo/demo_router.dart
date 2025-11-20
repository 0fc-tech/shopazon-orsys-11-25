/*import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(AppDemo());
}

final GoRouter routerDemo = GoRouter(
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Column(
        mainAxisAlignment: .center,
        children: [
          Text("😭", style: TextStyle(fontSize: 88)),
          Text("Problème de routage ${state.uri.path}"),
          OutlinedButton(
            onPressed: () {
              context.go("/");
            },
            child: Text("Revenir en sécurité"),
          ),
        ],
      ),
    ),
  ),
  routes: [
    GoRoute(
      path: '/',
      builder: (_, _) => PageListe(),
      routes: [GoRoute(path: 'detail', builder: (_, _) => PageDetail())],
    ),
  ],
);

class AppDemo extends StatelessWidget {
  const AppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      routerConfig: routerDemo,
    );
  }
}

class PageListe extends StatelessWidget {
  const PageListe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Liste'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            onTap: () {
              context.go('/detail2');
            },
          );
        },
      ),
    );
  }
}

class PageDetail extends StatelessWidget {
  const PageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('appbarTitle'),
      ),
      body: Text("Detail"),
    );
  }
}
*/
