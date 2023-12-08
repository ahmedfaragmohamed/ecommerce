import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Items/circlar_item.dart';

class ProductDetailScreen extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nike Air Max 270 Rea...",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search_outlined,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.more_vert_outlined,
              color: Colors.grey,
              size: 30,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: CarouselSlider.builder(
              itemCount: imageCarouselSlider.length,
              options: CarouselOptions(
                  height: 230,
                  autoPlay: false,
                  enlargeCenterPage: true, //animation

                  viewportFraction: 1,
                  autoPlayInterval: Duration(seconds: 1),
                  enableInfiniteScroll: true),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return Container(
                  margin: EdgeInsets.only(top: 20),
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 275,
                  child: Text(
                    "Nike Air Zoom Pegasus 36 Miami",
                    maxLines: 2,
                    style: TextStyle(
                        color: Color(0xff223263),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                Icon(Icons.favorite_border_outlined),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffFFC833),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffFFC833),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffFFC833),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Color(0xffFFC833),
                ),
                Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.grey,
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '\$299,43',
              overflow: TextOverflow.ellipsis,
              style: new TextStyle(
                fontSize: 20.0,
                fontFamily: 'Roboto',
                color: new Color(0xff40BFFF),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Select Size",
            style: TextStyle(
              color: Color(0xff223263),
              fontSize: 16,
              fontWeight:FontWeight.bold
            ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 50,
                itemBuilder: (context, index) {
                  return CirclarItem(color:  0xffFFFFFF,text: "6",);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Select Color",
              style: TextStyle(
                  color: Color(0xff223263),
                  fontSize: 16,
                  fontWeight:FontWeight.bold
              ),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 50,
                itemBuilder: (context, index) {
                  return CirclarItem(color:  0xff0000FF,text: "",);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Specification",
              style: TextStyle(
                  color: Color(0xff223263),
                  fontSize: 16,
                  fontWeight:FontWeight.bold
              ),),
          ),




        ],
      ),
    );
  }
}
