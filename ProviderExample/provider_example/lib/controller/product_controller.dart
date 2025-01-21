import 'package:flutter/material.dart';
import 'package:provider_example/model/product_model.dart';

class ProductController with ChangeNotifier {
  ProductModel? productModelObj;
  void addProductData({required ProductModel pObj}) {
    productModelObj = pObj;
  }

  void addToFav() {
    productModelObj!.isFavorite = !productModelObj!.isFavorite!;
    notifyListeners();
  }

  void addQuantity() {
    productModelObj!.quantity = productModelObj!.quantity!+1;
    notifyListeners();
  }

  void removeQuantity() {
    productModelObj!.quantity = productModelObj!.quantity!-1;
    notifyListeners();
  }
}
