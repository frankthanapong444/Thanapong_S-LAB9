import 'package:flutter/material.dart';
import 'package:FrankShop_application/constants.dart';
import 'package:FrankShop_application/lab8ui.dart';
import 'package:FrankShop_application/menu.dart';
import 'package:FrankShop_application/models/product.dart';
import 'package:FrankShop_application/screens/product/products_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Frank SuperShop',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: ProductsScreen());
  }
}
