import 'package:ecommerce/Items/category_item.dart';
import 'package:ecommerce/Items/favorite_product_item.dart';
import 'package:ecommerce/Screens/favorite_product_screen.dart';
import 'package:ecommerce/repository/category_repository.dart';
import 'package:ecommerce/repository/favorite_repository.dart';
import 'package:ecommerce/repository/home_models.dart';
import 'package:ecommerce/repository/home_repository.dart';
import 'package:ecommerce/repository/models_category.dart';
import 'package:ecommerce/repository/models_favorite_prudact.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';

import '../Items/falsh_sale_item.dart';

class HomeScreen extends StatelessWidget {
  int idTest = 1;

  List imageCarouselSlider = [
    "assets/images/ImageCarouselSlider/shose12.png",
    "assets/images/ImageCarouselSlider/shose13.png",
    "assets/images/ImageCarouselSlider/shose1.webp",
    "assets/images/ImageCarouselSlider/shose2.webp",
    "assets/images/ImageCarouselSlider/shose3.webp",
    "assets/images/ImageCarouselSlider/shose4.png",
    "assets/images/ImageCarouselSlider/shose5.jpg",
    "assets/images/ImageCarouselSlider/shose6.webp",
    "assets/images/ImageCarouselSlider/shose7.webp",
    "assets/images/ImageCarouselSlider/shose8.webp",
    "assets/images/ImageCarouselSlider/shose9.jpg",
    "assets/images/ImageCarouselSlider/shose10.webp",
    "assets/images/ImageCarouselSlider/shose11.webp"
  ];
  // List<DataCategoryItem> dataCategoryItem = [
  //   DataCategoryItem(
  //       image: "assets/images/CategoryItem/shert.png", name: "Man Shirt"),
  //   DataCategoryItem(
  //       image: "assets/images/CategoryItem/dress.png", name: "Dress"),
  //   DataCategoryItem(
  //       image: "assets/images/CategoryItem/man_work_equipment.png",
  //       name: "Man Work Equipment"),
  //   DataCategoryItem(
  //       image: "assets/images/CategoryItem/woman_bag.png", name: "Woman Bag"),
  //   DataCategoryItem(
  //       image: "assets/images/CategoryItem/shert.png", name: "Man Shirt"),
  //   DataCategoryItem(
  //       image: "assets/images/CategoryItem/dress.png", name: "Dress"),
  //   DataCategoryItem(
  //       image: "assets/images/CategoryItem/man_work_equipment.png",
  //       name: "Man Work Equipment"),
  //   DataCategoryItem(
  //       image: "assets/images/CategoryItem/woman_bag.png", name: "Woman Bag"),
  // ];
  // List<DataFlashSaleItem> dataFlashSaleItem = [
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/1.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/2.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/3.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/4.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/5.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/6.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/7.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/8.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/1.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/2.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/3.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/4.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/5.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/6.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/7.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/8.png", name: "Man Shirt"),
  // ];
  // List<DataFlashSaleItem> dataMegaSaleItem = [
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/5.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/6.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/7.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/8.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/1.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/2.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/3.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/4.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/1.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/2.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/3.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/4.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/5.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/6.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/7.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/8.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/1.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/2.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/3.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/4.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/5.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/6.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/7.png", name: "Man Shirt"),
  //   DataFlashSaleItem(
  //       image: "assets/images/FlashSale/8.png", name: "Man Shirt"),
  // ];

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
                  future: FavoriteRepository().getFavoriteProduct(idTest),
                  builder: (BuildContext context,
                      AsyncSnapshot<FavoriteProductResponse> snapshot) {
                    if (snapshot.hasData) {
                      final FavoriteProductResponse product = snapshot.data!;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
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
                  future: FavoriteRepository().getFavoriteProduct(idTest),
                  builder: (BuildContext context,
                      AsyncSnapshot<FavoriteProductResponse> snapshot) {
                    if (snapshot.hasData) {
                      final FavoriteProductResponse product = snapshot.data!;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
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
                      child: Text("fjsdkjlkaks"),
                    );
                  },
                ),
              ),
            ),

            //slider
            Container(
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                itemCount: imageCarouselSlider.length,
                options: CarouselOptions(
                    height: 230,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    autoPlayInterval: Duration(seconds: 1),
                    enableInfiniteScroll: true),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return Container(
                    margin: EdgeInsets.all(16),
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        imageCarouselSlider[itemIndex],
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                    ),
                  );
                },
              ),
            ),
            FutureBuilder(
              future: FavoriteRepository().getFavoriteProduct(idTest),
              builder: (context, snapshot) {
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
