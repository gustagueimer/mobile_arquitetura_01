import 'dart:convert';
import 'package:http/io_client.dart';
import '../models/product_model.dart';

class ProductRemoteDatasource {
  final IOClient client;
  final Uri link = Uri.parse("https://fakestoreapi.com/products");

  ProductRemoteDatasource(this.client);
  
  Future<List<ProductModel>> getProducts() async {
    final response = await client.get(
      link
    );
    
    final responseDecoded = jsonDecode(response.body);

    print(responseDecoded);

    List<dynamic> data = responseDecoded['data'];
    
    List<ProductModel> products = [];
    data.forEach((item) {
      products.add(ProductModel.fromJson(item));
    });

    return products;
  }
}