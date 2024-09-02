

import 'package:flutter/material.dart';
import 'package:store_app/constants';
import 'package:store_app/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimarycolor,
      appBar: homeappbar(),
      body: const HomeBody() ,
    );
  }

  AppBar homeappbar() {
    return AppBar(
      backgroundColor: kPrimarycolor,
      title: const Padding(
        padding: EdgeInsets.only(left: 130.0),
        child: Text("مرحباً بكم في المتجر الإلكتروني " ,
        style: TextStyle(
          color: Colors.white, 
          fontSize: 23.0,
        ), 
        ),
      ),
    );
  }
}