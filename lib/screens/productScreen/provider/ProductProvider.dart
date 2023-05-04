import 'package:flutter/material.dart';
import 'package:product_json_api/utils/product_helper.dart';

import '../model/ProductModel.dart';

class ProductProvider extends ChangeNotifier
{

  List<dynamic> l1 = [];
  Future<void> ProductApiCall()
  async {
    productHelper p1 = productHelper();


    List<dynamic> ApiCall= await p1.ApiCall();
    l1 = ApiCall;
    notifyListeners();

  }
}