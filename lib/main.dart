import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:product_app/features/product/data/datasources/product_remote_datasource.dart';
import 'package:product_app/features/product/data/repositories/product_repository_impl.dart';
import 'package:product_app/features/product/presentation/pages/product_page.dart';
import 'package:product_app/features/product/presentation/viewmodels/product_viewmodel.dart';

void main() {
  runApp(const AppRoot());
}

class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TODO Refatoração',
      theme: ThemeData(useMaterial3: true),
      home: ProductPage(
              viewModel: ProductViewModel(
                          ProductRepositoryImpl(
                            ProductRemoteDatasource(
                              Client()
                            )
                          )  
                        )
            ),
    );
  }
}


