import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxstateproject/controller/shoppingcontroller.dart';

import '../controller/cartcontroller.dart';

class ShoppingScreen extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello World"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child:  GetX<ShoppingController>(
              builder: (controller) {
                return ListView.builder(
                    itemCount: controller.products.length,
                    itemBuilder: (context, index){
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${shoppingController.products[index].productName}'),
                                  Text('${shoppingController.products[index].productDiscription}'),
                                ],
                              ),
                              Text('${shoppingController.products[index].price}'),
                            ],
                          ),
                          RaisedButton(onPressed: (){
                            cartController.addToCart(
                              controller.products[index]);

                          },
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text("ADD Cart"),),
                        ],
                      ),
                    ),
                  );
    });
              }
            ),
          ),
          GetX<CartController>(builder: (controller) {
              return Text("Total amount: \$ ${controller.totalPrice}",style:TextStyle(
                  fontSize:10,color: Colors.black),);
            }
          ),
          SizedBox(height: 100,),
        ],
      ),
    );
  }
}
