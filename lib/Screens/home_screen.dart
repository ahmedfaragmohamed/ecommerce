import 'package:ecommerce/Items/category_item.dart';
import 'package:ecommerce/Screens/favorite_product_screen.dart';
import 'package:ecommerce/repository/category_repository.dart';
import 'package:ecommerce/repository/home_models.dart';
import 'package:ecommerce/repository/home_repository.dart';
import 'package:ecommerce/repository/models_category.dart';
import 'package:ecommerce/repository/product_models.dart';
import 'package:ecommerce/repository/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';
import '../Items/falsh_sale_item.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            //Top widget [search bar, favorite, notification]
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .7,
                  margin: EdgeInsets.all(8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Search Product",
                        hintStyle: TextStyle(color: Color(0xff9098B1)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff40BFFF),
                        )),
                  ),
                ),
                // IconButton(
                // onPressed: ()  {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(builder: (context) => FavoriteProductScreen()),);
                // },
                Icon(Icons.favorite_border_outlined,
                    color: Color(0xff9098B1), size: 30),

                Icon(
                  Icons.notifications_none_outlined,
                  color: Color(0xff9098B1),
                  size: 30,
                ),
              ],
            ),
            //slider
            Container(
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                  future: HomeRepository().getHomeData(),
                  builder: (BuildContext context,
                      AsyncSnapshot<HomeResponse> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {}
                    if (snapshot.hasData) {
                      final HomeResponse banner = snapshot.data!;
                      return CarouselSlider.builder(
                        itemCount: banner.data.banners.length,
                        options: CarouselOptions(
                            height: 230,
                            autoPlay: true,
                            enlargeCenterPage: true, //animation

                            viewportFraction: 1,
                            autoPlayInterval: Duration(seconds: 3),
                            enableInfiniteScroll: true),
                        itemBuilder: (BuildContext context, int index,
                            int pageViewIndex) {
                          return Container(
                            margin: EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                banner.data.banners[index].image,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          );
                        },
                      );
                    }
                    return Center(
                      child: Text("nothing"),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff223263),
                    ),
                  ),
                  Text(
                    "More Category",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff40BFFF),
                    ),
                  )
                ],
              ),
            ),

            // ______________________ Category ________________________

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 100,
                child: FutureBuilder(
                  future: CategoryRepository().getCategory(),
                  builder: (BuildContext context,
                      AsyncSnapshot<CategoryGeneralResponse> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SizedBox(
                          height: 100.0,
                          child: Shimmer.fromColors(
                            baseColor: Colors.grey.shade200,
                            highlightColor: Colors.white,
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    radius: 30,
                                  ),
                                );
                              },
                            ),
                          ));
                    }
                    if (snapshot.hasData) {
                      final CategoryGeneralResponse category = snapshot.data!;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: category.data.data.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FavoriteProductScreen(
                                          id: category.data.data[index].id,
                                          title: category.data.data[index].name,
                                        )),
                              );
                            },
                            child: CategoryItem(
                                image: category.data.data[index].image,
                                text: category.data.data[index].name),
                          );
                        },
                      );
                    }
                    return Center(
                      child: Text("There is an error, tray agine"),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Flash Sale",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff223263),
                    ),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff40BFFF),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 240,
                child: FutureBuilder(
                  future: HomeRepository().getHomeData(),
                  builder: (BuildContext context,
                      AsyncSnapshot<HomeResponse> snapshot) {
                    if (snapshot.hasData) {
                      final HomeResponse product = snapshot.data!;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: product.data.products.length,
                        itemBuilder: (context, index) {
                          return FlashSaleItem(
                            description: product.data.products[index].description,
                            discount: product.data.products[index].discount,
                            name: product.data.products[index].name,
                            old_price: product.data.products[index].oldPrice,
                            price: product.data.products[index].price,
                            image: product.data.products[index].image,
                          );
                        },
                      );
                    }
                    return Center(
                      child: Text("fjsdkjlkaks"),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mega Sale",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff223263),
                    ),
                  ),
                  Text(
                    "See More",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff40BFFF),
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: SizedBox(
                height: 240,
                child: FutureBuilder(
                  future: HomeRepository().getHomeData(),
                  builder: (BuildContext context,
                      AsyncSnapshot<HomeResponse> snapshot) {
                    if (snapshot.hasData) {
                      final HomeResponse product = snapshot.data!;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: product.data.products.length,
                        itemBuilder: (context, index) {
                          return FlashSaleItem(
                            description: product.data.products[index].description,
                            discount: product.data.products[index].discount,
                            name: product.data.products[index].name,
                            old_price: product.data.products[index].oldPrice,
                            price: product.data.products[index].price,
                            image: product.data.products[index].image,
                          );
                        },
                      );
                    }
                    return Center(
                      child: Text("fjsdkjlkaks"),
                    );
                  },
                ),
              ),
            ),

            //slider
            Container(
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                  future: HomeRepository().getHomeData(),
                  builder: (BuildContext context,
                      AsyncSnapshot<HomeResponse> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {}
                    if (snapshot.hasData) {
                      final HomeResponse banner = snapshot.data!;
                      return CarouselSlider.builder(
                        itemCount: banner.data.banners.length,
                        options: CarouselOptions(
                            height: 230,
                            autoPlay: true,
                            enlargeCenterPage: true, //animation

                            viewportFraction: 1,
                            autoPlayInterval: Duration(seconds: 3),
                            enableInfiniteScroll: true),
                        itemBuilder: (BuildContext context, int index,
                            int pageViewIndex) {
                          return Container(
                            margin: EdgeInsets.all(16),
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.network(
                                banner.data.banners[index].image,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ),
                          );
                        },
                      );
                    }
                    return Center(
                      child: Text("nothing"),
                    );
                  }),
            ),
            FutureBuilder(
              future: ProductRepository().getProductData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final ProductResponse product = snapshot.data!;
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
                      return FlashSaleItem(
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
                return Center(
                  child: Text("ajdj"),
                );
              },
            ),

            // child: ListView(
            //   scrollDirection: Axis.horizontal,
            //   children: [
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.PP", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //     item(image: "assets/images/items/shert.png", text: "Man Shirt"),
            //     item(image: "assets/images/items/dress.png", text: "Dress"),
            //
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
