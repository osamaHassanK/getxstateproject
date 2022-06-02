import 'package:getxstateproject/model/product.dart';
import 'package:get/get.dart';


class CartController extends GetxController{
  var cartItem = List<Product>.empty(growable: true).obs;
  double get totalPrice => cartItem.fold(0, (sum, item) => sum + item.price);

  addToCart(Product product){
   cartItem.add(product);
  }
}