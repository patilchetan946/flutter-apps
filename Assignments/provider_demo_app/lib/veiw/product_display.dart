import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_app/model/product_model.dart';

class DisplayProduct extends StatefulWidget {
  const DisplayProduct({super.key});

  @override
  State createState() => _DisplayProductState();
}

class _DisplayProductState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Product"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(Provider.of<ProductModel>(context).productImage!),
            const SizedBox(height: 30),
            Text(Provider.of<ProductModel>(context).productName!),
            const SizedBox(height: 30),
            Text("${Provider.of<ProductModel>(context).price}")
          ],
        ),
      ),
    );
  }
}
