import 'package:flutter/material.dart';
import 'package:gatos_top/menu_lateral.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      MenuLateral(),
    );
  }
}