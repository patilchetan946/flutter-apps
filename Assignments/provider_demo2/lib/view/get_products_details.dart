import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo2/controller/product_controller.dart';
import 'package:provider_demo2/models/product_model.dart';
import 'package:provider_demo2/view/product_display.dart';

class GetProductDetails extends StatelessWidget {
  GetProductDetails({super.key});

  final TextEditingController _productNameTextEditingController =
      TextEditingController();
  final TextEditingController _productImageTextEditingController =
      TextEditingController();
  final TextEditingController _productPriceTextEditingController =
      TextEditingController();

  clearControllers() {
    _productImageTextEditingController.clear();
    _productNameTextEditingController.clear();
    _productPriceTextEditingController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GET PRODCUT DETAILS"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          TextFormField(
            controller: _productImageTextEditingController,
            decoration: InputDecoration(
              hintText: "Add Product Image",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _productNameTextEditingController,
            decoration: InputDecoration(
              hintText: "Add Product Name",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _productPriceTextEditingController,
            decoration: InputDecoration(
              hintText: "Enter Price",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              var tempObj = ProductModel(
                  isFavrouite: false,
                  productImage: _productImageTextEditingController.text.trim(),
                  productName: _productNameTextEditingController.text.trim(),
                  price: _productPriceTextEditingController.text.trim(),
                  quantity: 0);
              Provider.of<ProductController>(context, listen: false)
                  .addProductData(pObj: tempObj);
              clearControllers();
            },
            child: const Text("Add"),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const ProductDisplay();
                  },
                ),
              );
            },
            child: const Text("Submit"),
          )
        ],
      ),
    );
  }
}
