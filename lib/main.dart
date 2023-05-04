import 'package:flutter/material.dart';
import 'package:product_json_api/screens/dataScreen/view/data_screen.dart';
import 'package:product_json_api/screens/productScreen/provider/ProductProvider.dart';
import 'package:product_json_api/screens/productScreen/view/Product_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProductProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => product_screen(),
          'data':(context) => data_screen(),
        },
      ),
    ),
  );
}