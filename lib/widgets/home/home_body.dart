

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app/constants';
import 'package:store_app/models/products.dart';
import 'package:store_app/widgets/home/product_card.dart';


class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Column(
      children: [
        const SizedBox(height: kpadding/2,),
        Expanded(child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              decoration: const BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), 
                  topRight: Radius.circular(50)
                ),
              ),
            ),

 ListView.builder(
  itemCount: products.length,
  itemBuilder: (context, index){
  return productCard(itemIndex: index, product: products[index],);
})
      ],
    ))]));
  }
}


