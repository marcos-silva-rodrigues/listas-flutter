import 'package:flutter/material.dart';

import 'package:listas/ui/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Listas de Compras",
      home: new ListScreen(),
    );
  }
}
