import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo2/controller/product_controller.dart';
import 'package:provider_demo2/controller/wishlist_controller.dart';
import 'package:provider_demo2/view/get_products_details.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return ProductController();
          },
        ),
        ChangeNotifierProvider(create: (context) {
          return WishlistController();
        })
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GetProductDetails(),
        );
      },
    );
  }
}
