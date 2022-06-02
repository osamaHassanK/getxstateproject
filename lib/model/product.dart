import 'dart:ffi';

class Product{
  final int id;
  final  String productName;
  final  String productImage;
  final  String productDiscription;
   final double price;
  Product({required this.id,required this.price,required this.productDiscription,
    required this.productImage,required this.productName});

}