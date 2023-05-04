import 'package:new_project/Api%20integration/models/product_models.dart';
import 'package:http/http.dart' as http ;

class HttpService{

  // user defined function for fetching data from api
  static Future<List<ProductModel>> fetchProducts() async {

    // here we are using GET method
    var response = await http.get(Uri.parse("https://fakestoreapi.com/products"));

    if (response.statusCode == 200){ // if the response is success then status code will be 200
      var data = response.body;
      return productModelFromJson(data);
    }else{

      // throw Exception();
      var data = response.body;
      return productModelFromJson(data);
    }
  }
}