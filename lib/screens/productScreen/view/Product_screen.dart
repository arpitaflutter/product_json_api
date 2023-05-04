import 'package:flutter/material.dart';
import 'package:product_json_api/screens/productScreen/provider/ProductProvider.dart';
import 'package:product_json_api/utils/product_helper.dart';
import 'package:provider/provider.dart';

class product_screen extends StatefulWidget {
  const product_screen({Key? key}) : super(key: key);

  @override
  State<product_screen> createState() => _product_screenState();
}

class _product_screenState extends State<product_screen> {

  @override
  void initState() {
   super.initState();

   Provider.of<ProductProvider>(context,listen: false).ProductApiCall();
  }

  ProductProvider? pt,pf;
  @override
  Widget build(BuildContext context) {

    pt = Provider.of<ProductProvider>(context,listen: true);
    pf = Provider.of<ProductProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Json Data"),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: Column(
          children: [
            ElevatedButton(onPressed: () {

              pt!.ProductApiCall();
            }, child: Text("Show data")),

            Expanded(
              child: ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text("${pt!.l1[index].r1!.rate}"),
                  subtitle: Text("${pt!.l1[index].description}"),
                );
              },itemCount: pt!.l1.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
