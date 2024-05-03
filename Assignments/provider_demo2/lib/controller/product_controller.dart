import 'package:flutter/material.dart';
import 'package:provider_demo2/models/product_model.dart';

class ProductController with ChangeNotifier {
  List<ProductModel> productlist = [];

//ADD PRODUCT DATA
  void addProductData({required ProductModel pObj}) {
    productlist.add(pObj);
  }

//ADD TO FAVOURITE
  void addToFavrouite({required int index}) {
    productlist[index].isFavrouite = !productlist[index].isFavrouite;
    notifyListeners();
  }

//REMOVE FROM FAVOURITE
  void removeFavrouite({required int index}) {
    productlist[index].isFavrouite = productlist[index].isFavrouite;
    notifyListeners();
  }

//ADD QUANTITY
  void addQuantity(int index) {
    productlist[index].quantity = productlist[index].quantity! + 1;
    notifyListeners();
  }

//REMOVE QUANTITY
  void removeQuantity(int index) {
    productlist[index].quantity = productlist[index].quantity! - 1;
    notifyListeners();
  }
}
