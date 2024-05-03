import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_app/model/product_model.dart';
import 'package:provider_demo_app/veiw/product_details.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) {
          ProductModel pobj =
              ProductModel(productName: "", productImage: "", price: 0);
        },
        child: const GetProductDetails(),
      ),
    );
  }
}
