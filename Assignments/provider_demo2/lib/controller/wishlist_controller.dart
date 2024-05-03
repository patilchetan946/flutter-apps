import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider_demo2/models/product_model.dart';

class WishlistController with ChangeNotifier {
  List<ProductModel> listofWish = [];

  void addToWishlist({required ProductModel? productModelobj}) {
    listofWish.add(productModelobj!);
    log("PRODUCT ADDED TO WISHLIST");
  }

  void removefromWishlist({required int index}) {
    listofWish.removeAt(index);
    log("PRODUCT REMOVED FROM WISHLIST");
    notifyListeners();
  }
}
