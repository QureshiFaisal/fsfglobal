
import 'package:flutter/material.dart';
class PreviewScreen extends StatelessWidget{
  static const routeName = '/previewscreen';
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
debugShowCheckedModeBanner: false,
home: Scaffold(
    appBar: AppBar(
    backgroundColor: Colors.black,
      title: const Text('Preview Screen'),
    ),
    body: Text('Preview'),
  ),
      
    );
  }
}