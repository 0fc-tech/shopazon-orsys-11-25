import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart';

part 'demo_http.freezed.dart';
part 'demo_http.g.dart';

void main() {
  runApp(AppDemo());
}

class AppDemo extends StatelessWidget {
  const AppDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: DemoHttpPage(),
    );
  }
}

class DemoHttpPage extends StatelessWidget {
  const DemoHttpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('appbarTitle'),
      ),
      body: FutureBuilder(
        future: getModelsByBrand("dodge"),
        builder: (_, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return ListView.builder(
              itemCount: snapshot.data!.results.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data!.results[index].modelName),
                subtitle: Text(snapshot.data!.results[index].toString()),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(child: Icon(Icons.error));
          }
        },
      ),
    );
  }
}

Future<ResponseMakeModels> getModelsByBrand(String brand) async {
  //Exécution de la requête et récupération de la réponse
  final response = await get(
    Uri.parse(
      "https://vpic.nhtsa.dot.gov/api/vehicles/getmodelsformake/$brand?format=json",
    ),
  );
  //Analyse de la réponse
  if (response.statusCode == 200) {
    //Désérialisation (JSON String -> Map -> Objet Dart)
    return ResponseMakeModels.fromJson(jsonDecode(response.body));
  } else {
    //Retour d'une erreur car réponse NOK
    return Future.error("La donnée n'a pas pu être récupérée");
  }
}

@freezed
abstract class ResponseMakeModels with _$ResponseMakeModels {
  const factory ResponseMakeModels({
    @JsonKey(name: "Count") required int count,
    @JsonKey(name: "Message") required String message,
    @JsonKey(name: "Results") required List<Model> results,
  }) = _ResponseMakeModels;

  factory ResponseMakeModels.fromJson(Map<String, dynamic> json) =>
      _$ResponseMakeModelsFromJson(json);
}

@freezed
abstract class Model with _$Model {
  const factory Model({
    @JsonKey(name: "Make_Name") required String makeName,
    @JsonKey(name: "Model_Name") required String modelName,
  }) = _Model;

  factory Model.fromJson(Map<String, dynamic> json) => _$ModelFromJson(json);
}
