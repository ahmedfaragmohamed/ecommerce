

import 'package:dio/dio.dart';
import 'package:ecommerce/repository/category_repository.dart';
import 'package:ecommerce/repository/favorite_repository.dart';
import 'package:ecommerce/repository/models_category.dart';
import 'package:ecommerce/repository/models_favorite_prudact.dart';
import 'package:flutter/material.dart';

import '../Items/favorite_product_item.dart';

class FavoriteProductScreen extends StatefulWidget {
  int id;
  String title;
  FavoriteProductScreen({required this.id, required this.title});

  @override
  State<FavoriteProductScreen> createState() => _FavoriteProductScreenState();
}

class _FavoriteProductScreenState extends State<FavoriteProductScreen> {
  late Future<FavoriteProductResponse> CategoryData;

  @override
  void initState() {
    super.initState();
    CategoryData = FavoriteRepository().getFavoriteProduct(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title.toString(),
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          FutureBuilder(
              future: FavoriteRepository().getFavoriteProduct(widget.id),
              builder: (BuildContext context,
                  AsyncSnapshot<FavoriteProductResponse> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {}

                if (snapshot.hasData) {
                  final FavoriteProductResponse product = snapshot.data!;
                  return GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 0,
                      childAspectRatio: .75,
                    ),
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: product.data.data.length,
                    itemBuilder: (context, index) {
                      return FavoriteProductItem(
                        description: product.data.data[index].description,
                        discount: product.data.data[index].discount,
                        name: product.data.data[index].name,
                        old_price: product.data.data[index].oldPrice,
                        price: product.data.data[index].price,
                        image: product.data.data[index].image,
                      );
                    },
                  );
                }
                if (snapshot.hasError) {
                  return Center(child: Text("Error"),);
                }

                return Center(child: CircularProgressIndicator());
              }),
        ],
      ),
    );
  }
}
