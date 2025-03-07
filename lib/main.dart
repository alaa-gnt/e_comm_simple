import 'package:e_comm_simple/Pages/CardPage.dart';
import 'package:e_comm_simple/Pages/HomePage.dart';
import 'package:e_comm_simple/Pages/ShopPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
            routes: { 
        '/':(context) => Homepage(), 
        '/shop':(context) => ShopPage(),
        '/card':(context) => CardPage(),

      },
    );
  }
}