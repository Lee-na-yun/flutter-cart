import 'package:flutter/material.dart';

import 'pages/cart_page.dart';
import 'pages/catalog_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginPage(),
        "/catalog": (context) => CatalogPage(),
        "/cart": (context) => CartPage(),
      },
    );
  }
}
