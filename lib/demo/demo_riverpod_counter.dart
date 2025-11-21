import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'demo_riverpod_counter.g.dart';

void main() {
  // Internationalisation
  //Importation des langues
  //Firebase (notification et connexion à firebase)

  runApp(ProviderScope(child: DemoRiverpodApp()));
}

class DemoRiverpodApp extends StatelessWidget {
  const DemoRiverpodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: DemoRiverpodPage(),
    );
  }
}

class DemoRiverpodPage extends ConsumerWidget {
  const DemoRiverpodPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('appbarTitle')),
      body: Text(ref.watch(counterProvider).toString()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

@riverpod
class Counter extends _$Counter {
  @override
  int build() {
    return 0;
  }

  void increment() => state++;
}
