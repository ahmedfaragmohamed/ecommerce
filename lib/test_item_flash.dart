import 'package:flutter/material.dart';

class FlashSaleItemTest extends StatelessWidget {
  String image;
  String text;
  FlashSaleItemTest({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12,
      width: 140,
      child: Column(
        children: [
          Container(

            decoration: BoxDecoration(
              border: Border.all( width: 10,color: Colors.cyan

              ),
            ),
            child: Image.asset(
              image,


            ),
          ),
        ],
      ),
    );
  }
}