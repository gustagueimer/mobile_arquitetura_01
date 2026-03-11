import '../../domain/repositories/product_repository.dart';
import '../../domain/entities/product.dart';
import 'package:flutter/foundation.dart';

class ProductViewModel {
  final ProductRepository repository;

  final ValueNotifier<List<Product>> products = ValueNotifier([]);

  ProductViewModel(this.repository);

  Future<void> loadProducts() async {
    final result = await repository.getProducts();
    products.value = result;
  }
}