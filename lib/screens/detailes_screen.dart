

import 'package:flutter/material.dart';
import 'package:store_app/constants';
import 'package:store_app/models/products.dart';

import 'package:store_app/widgets/home/detailes_body.dart';

class DetailesScreen extends StatelessWidget {
   DetailesScreen({super.key, required this.product});
   final Product product ; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: kPrimarycolor,
appBar: detaileappbar(),
body: DetailesBody(product: product,),

    );
  }




  AppBar detaileappbar() {
    return AppBar(
elevation: 0.0,
title: Text("رجوع" ,
style: TextStyle(
  fontSize: 28, 
  color:  Color.fromARGB(255, 51, 26, 195), 
),),
backgroundColor: kBackgroundcolor,
iconTheme: const IconThemeData(
  size: 30, 

  color: Color.fromARGB(255, 51, 26, 195), 
  shadows: [
    Shadow(
      color: Color.fromARGB(255, 44, 80, 146), 
      blurRadius: 9, 
      offset: Offset(0, 17),
    )
  ]
),
);
  }
}