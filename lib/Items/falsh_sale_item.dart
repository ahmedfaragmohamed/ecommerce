import 'package:ecommerce/Screens/product_detail_screen.dart';
import 'package:flutter/material.dart';

class FlashSaleItem extends StatelessWidget {

  double price;
  double old_price;
  int discount;
  String image;
  String name;
  String description;
  FlashSaleItem(
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

        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductDetailScreen()),);
          },
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
                    child: Container(
                      child: Container(
                        width: 130,

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
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: new TextStyle(
                                fontSize: 13.0,
                                fontFamily: 'Roboto',
                                color: new Color(0xFF212121),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 7,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.only(right: 20),
                                  child: Text(

                                    '${this.discount}%Off',
                                    overflow: TextOverflow.ellipsis,
                                    style: new TextStyle(
                                      fontSize: 10.0,
                                      fontFamily: 'Roboto',
                                      color: new Color(0xffFB7181),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),

                      ),
                    ),
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DataFlashSaleItem {
  final String name;
  final String image;
  DataFlashSaleItem({required this.name, required this.image});
}


