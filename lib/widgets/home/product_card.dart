


import 'package:flutter/material.dart';
import 'package:store_app/constants';
import 'package:store_app/models/products.dart';
import 'package:store_app/screens/detailes_screen.dart';

class productCard extends StatelessWidget {
  const productCard({
    super.key, required this.itemIndex, required this.product,
  });
final int itemIndex ; 
final Product product ; 
  @override
  
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size ; 
   
    return Container(
        
          // color: Colors.amber,
          height: 186,
          child: InkWell(
            onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context){
  return DetailesScreen(product: product,);
}));

            },
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0 , vertical: 2),
                child: Container(
                height: 170,
                
                decoration:  BoxDecoration(
                 
                  boxShadow: const [
                    BoxShadow(
            offset: Offset(0, 16),
            blurRadius: 20,
            color: Colors.black26
                    ),
                  ],
                  color:kBackgroundcolor,
                  border: Border.all(color: const Color.fromARGB(255, 78, 146, 158) , 
                   style: BorderStyle.solid , width: 2) ,
                  
                  borderRadius: const BorderRadius.all(Radius.circular(35)) , 
                
                ),
                
                ),
                ), 
                Positioned( 
                  top: 22,
                  left: 19,
                
                  child: Container(
                    padding: const EdgeInsets.symmetric(
            horizontal: kpadding , 
                    
                    ),
                    width: 148,
                    height: 156,
                    // color: Colors.amber,
                    
                    child: Image.asset(product.image, 
                    fit: BoxFit.cover,))), 
                    Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
            height: 136,
            width: size.width-148,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.end,
             
              children: [
             
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Text(product.title, 
                  style: const TextStyle(
                    fontSize: 17, 
                    color: Colors.black, 
                    fontWeight: FontWeight.bold
                  ),),
                ) ,
                const SizedBox(height: 5,),
            
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Text(product.subTitle, 
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 83, 83, 83) 
                  ),),
                ), 
              const SizedBox(height: 25,),
             
                Padding(
                  padding: const EdgeInsets.only(left: 125.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                         borderRadius: BorderRadius.circular(12)
                        ),
                        child: Text("السعر :\$${product.price}", 
                        style: const TextStyle(
                          fontSize: 17, 
                        ),),
                      ),
                      const Icon(Icons.attach_money_rounded, 
                      size: 30,
                      color: Color.fromARGB(255, 43, 201, 48),)
                    ],
                  ),
                )
            
              ],
            ),
            
                    ))
                
                
                ],
              ),
          ));
  }
}
