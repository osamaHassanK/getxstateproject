import 'package:get/get.dart';
import 'package:getxstateproject/model/product.dart';

class ShoppingController extends GetxController{
 var products = List<Product>.empty(growable: true).obs;

 @override
 void onInit(){
  super.onInit();
   fetchProducts();
 }
 void fetchProducts()async{
  await Future.delayed(Duration(seconds: 1));
  var productResult=[
   Product(id: 2500, price:1.0, productDiscription:"0000", productImage: "image", productName:"osama"),
   Product(id: 2500, price:1.0, productDiscription:"0000", productImage: "image", productName:"osama"),
   Product(id: 2500, price:1.0, productDiscription:"0000", productImage: "image", productName:"osama"),
   Product(id: 2500, price:1.0, productDiscription:"0000", productImage: "image", productName:"osama"),
  ];
 products.value= productResult;
 }
}
