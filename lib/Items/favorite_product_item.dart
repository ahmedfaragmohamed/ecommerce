import 'package:flutter/material.dart';

class FavoriteProductItem extends StatelessWidget {
  double price;
  double old_price;
  int discount;
  String image;
  String name;
  String description;
  FavoriteProductItem(
      {required this.price,
      required this.old_price,
      required this.discount,
      required this.image,
      required this.name,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: .5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                Center(
                  child: Column(children: [
                    Container(
                      width: 120,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          this.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            this.name,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Color(0xff223263),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            this.description,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: new TextStyle(
                              fontSize: 13.0,
                              fontFamily: 'Roboto',
                              color: new Color(0xFF212121),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Color(0xffFFC833),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Color(0xffFFC833),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Color(0xffFFC833),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Color(0xffFFC833),
                                ),
                                Icon(
                                  Icons.star,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            '\$${this.price}',
                            overflow: TextOverflow.ellipsis,
                            style: new TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'Roboto',
                              color: new Color(0xff40BFFF),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '\$${this.old_price}',
                                overflow: TextOverflow.ellipsis,
                                style: new TextStyle(
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  color: new Color(0xff9098B1),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '${this.discount}% Off',
                                overflow: TextOverflow.ellipsis,
                                style: new TextStyle(
                                  fontSize: 10.0,
                                  fontFamily: 'Roboto',
                                  color: new Color(0xffFB7181),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.delete_outline,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DataFavoriteProductItem {
  final String name;
  final String image;
  DataFavoriteProductItem({required this.name, required this.image});
}
