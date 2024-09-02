



import 'package:flutter/material.dart';
import 'package:store_app/constants';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size, required this.image,
  });

  final Size size;
  final String image ; 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kpadding),
      height: size.width*0.8,
      // color: Colors.black,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
      height: size.width*0.8,
       width: size.width*0.8,
       decoration: const BoxDecoration(
        color: Colors.white, 
        shape: BoxShape.circle,
       ),
    
          ) , 
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 75.0 , horizontal: 4),
            child: Image.asset(image, 
            width: size.width*0.55,
            height:  size.width*0.75,
            //  fit: BoxFit.cover,
            ),
          )
          
        ],
      ),
    );
  }
}