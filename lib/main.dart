import 'dart:async';

import 'package:ecommerce/Screens/favorite_product_screen.dart';
import 'package:ecommerce/Screens/home_screen.dart';
import 'package:ecommerce/Screens/register_screen.dart';
import 'package:ecommerce/Screens/splash_screen.dart';
import 'package:ecommerce/test.dart';
import 'package:ecommerce/test_dio.dart';
import 'package:ecommerce/test_item_flash.dart';
import 'package:flutter/material.dart';

import 'Screens/login_screen.dart';
import 'Screens/product_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),

      debugShowCheckedModeBanner: false,
      // home: FavoriteProductScreen(),
      // home: ProductDetailScreen(),

      home: NavBar(),
      // SafeArea(child: Scaffold(body: FlashSaleItemTest(image: "assets/images/slider_image.png",text: "ahmed"),),),
      // home: HomeScreen(),
      // home: SplashScreen(),
    );
  }
}
