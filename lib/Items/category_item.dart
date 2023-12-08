import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  String image;
  String text;
  CategoryItem({required this.image, required this.text});



  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(

            backgroundColor: Color(0xffEBF0FF),


            radius: 31,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: NetworkImage(this.image),
              radius: 30,
              // child: Image.network(this.image),


            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),

          width: 62,
          height: 25,
          child: Center(
            child: Text("${this.text}",style: TextStyle(
              fontSize: 8,
              color: Color(0xff9098B1),
              fontWeight: FontWeight.bold
            ),),
          ),
        )
      ],
    );
  }
}
class DataCategoryItem {
  final String name;
  final String image;
  DataCategoryItem({ required this.name, required this.image});

}

// Widget itemsWidget({required image, required text}){
//   return Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: CircleAvatar(
//
//           backgroundColor: Colors.grey,
//
//
//           radius: 31,
//           child: CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 30,
//             child: Image.asset(image,
//               color: Color(0xff40BFFF),),
//
//
//           ),
//         ),
//       ),
//       Text("${text}")
//     ],
//   );
//
//
//
// }
