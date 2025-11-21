import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(DemoImagePickerApp());
}

class DemoImagePickerApp extends StatelessWidget {
  const DemoImagePickerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: ImagePickerPage(),
    );
  }
}

class ImagePickerPage extends StatefulWidget {
  const ImagePickerPage({super.key});

  @override
  State<ImagePickerPage> createState() => _ImagePickerPageState();
}

class _ImagePickerPageState extends State<ImagePickerPage> {
  XFile? image = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('appbarTitle')),
      //Icône permettant d'afficher la caméra utilisateur OU galerie
      body: Column(
        children: [
          IconButton(
            onPressed: () async {
              final _image = await ImagePicker().pickImage(source: .camera);
              setState(() {
                image = _image;
              });
            },
            icon: Icon(Icons.camera_alt),
          ),
          if (image != null) Image.file(File.fromUri(Uri.parse(image!.path))),
        ],
      ),
    );
  }
}
