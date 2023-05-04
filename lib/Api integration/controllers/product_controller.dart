import 'package:get/get.dart';
import 'package:new_project/Api%20integration/services/http_service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs; // making this bool observable
  var productList = [].obs;

  @override
  void onInit(){
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async{
    try{
      isLoading(true);
      var products = await HttpService.fetchProducts();
      if (products != null){
        productList.value = products;
      }
    }finally{
      isLoading(false);
    }
  }
}