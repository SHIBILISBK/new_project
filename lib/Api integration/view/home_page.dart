import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:new_project/Api%20integration/controllers/product_controller.dart';

import '../widget/product_tile.dart';

void main(){
  runApp(MaterialApp(home:HomePageView() ,));
}


class HomePageView extends StatelessWidget{

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(child: Text(
                "ShopMe",
                style: TextStyle(
                  fontFamily: "avenir",
                  fontSize: 32,
                  fontWeight: FontWeight.w900
                ),
              ))
            ],
          ),
          ),
          Expanded(
              child: Obx(
              (){
                if (productController.isLoading.value){
                  return Center(child: CircularProgressIndicator());
                }else{
                  return ListView.builder(
                    itemCount: productController.productList.length,
                    itemBuilder:(context,index){
                      return ProductTile(productController.productList[index]);
                    },

                    //staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                  );
                }
              },
          ),
          )
        ],
      ),
    );
  }

}