import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Rectangle();
  }
}

class Rectangle extends StatelessWidget {

  const Rectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Container(color: Colors.black12, width: 300, height: 300),
      );
  }
}
