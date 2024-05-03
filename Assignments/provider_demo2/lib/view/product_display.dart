import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo2/controller/product_controller.dart';
import 'package:provider_demo2/controller/wishlist_controller.dart';
import 'package:provider_demo2/view/wishListScreen.dart';

class ProductDisplay extends StatelessWidget {
  const ProductDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Display"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const WishListDisplay();
              }));
            },
            icon: const Icon(
              Icons.favorite_border_rounded,
              color: Colors.red,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: providerObj.productlist.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.network("${providerObj.productlist[index].productImage}"),
              const SizedBox(height: 10),
              Text("${providerObj.productlist[index].productName}"),
              const SizedBox(height: 10),
              Text("${providerObj.productlist[index].price}"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // IS FAVOURITE
                  Consumer(
                    builder: (context, provider, child) {
                      log("IN FAV CONSUMER");
                      return GestureDetector(
                        onTap: () {
                          //ADD PRODUCT TO WISHLIST
                          providerObj.addToFavrouite(index: index);

                          if (providerObj.productlist[index].isFavrouite) {
                            Provider.of<WishlistController>(context,
                                    listen: false)
                                .addToWishlist(
                                    productModelobj:
                                        providerObj.productlist[index]);
                          } else {
                            Provider.of<WishlistController>(context,
                                    listen: false)
                                .removefromWishlist(index: index);
                          }
                        },
                        child: Icon(
                          providerObj.productlist[index].isFavrouite
                              ? Icons.favorite_rounded
                              : Icons.favorite_outline_rounded,
                        ),
                      );
                    },
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          providerObj.addQuantity(index);
                        },
                        child: const Icon(
                          Icons.add,
                        ),
                      ),
                      const SizedBox(width: 5),
                      // QUANTITY
                      Consumer<ProductController>(
                        builder: (context, value, child) {
                          return Text(
                              "${providerObj.productlist[index].quantity}");
                        },
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          providerObj.removeQuantity(index);
                        },
                        child: const Icon(Icons.remove),
                      )
                    ],
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
