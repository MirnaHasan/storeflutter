

class Product {

final  int id , price ; 
final String title , subTitle , description , image ;

Product({
  required this.id ,
  required this.price ,
  required this.title ,
  required this.subTitle ,
  required this.description ,
  required this.image ,
});

}

List <Product> products = [

Product(
  id: 1,
 price: 40,
  title: "Xiaomi",
   subTitle: "دقة تصوير عالية",
    description: "",
     image:"images/image-1.jpg",
     ),

Product(
  id: 2,
   price: 80,
    title:"سماعات",
     subTitle: "جودة صوت ",
      description: "" ,
      image:"images/image-2.jpg",
      ),

Product(
  id: 3,
   price: 100,
    title: "سماعات رأس",
     subTitle: "جودة صوت ",
      description: "",
       image:"images/image-3.jpg",
       ),

Product(
  id: 4,
   price: 140,
    title: "كاميرا",
     subTitle: "دقة تصوير عالية",
      description: "",
       image: "images/image-4.jpeg",
       ),
       
Product(
  id: 5,
   price: 200,
    title: "ساعة روليكس",
     subTitle: "ضد الماء",
      description: "",
       image: "images/image-5.jpg",
       ),
       Product(id: 5,
        price: 170,
         title: "مكبر صوت",
          subTitle: "مستوى صوت عالي", 
          description: "" ,
          image: "images/image-6.jpeg",)


];