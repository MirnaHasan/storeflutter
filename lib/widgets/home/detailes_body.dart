

import 'package:flutter/material.dart';
import 'package:store_app/constants';
import 'package:store_app/models/products.dart';
import 'package:store_app/widgets/home/productimage.dart';


class DetailesBody extends StatelessWidget {
  DetailesBody({super.key, required this.product,});
  final Product product ; 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      
    children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: kpadding),
        // height: 300,
       
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50), 
            bottomRight: Radius.circular(50),
            
          ), 
           color: Color.fromARGB(255, 210, 208, 206),
        ),
        child:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(child: ProductImage(size: size, image: product.image ,)),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text( product.title ,  
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ) , 
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(product.subTitle, 
                 style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ) , 
               Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(" السعر : \$${product.price}", 
                 style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold, 
                  color: Color.fromARGB(255, 166, 126, 5)
                ),),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(": شرح عن المنتج" ,
           style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold , 
                  color: Colors.white
                ),),
        )
      
    ],
      
        
      
    );
  }
}