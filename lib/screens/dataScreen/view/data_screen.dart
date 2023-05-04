import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../productScreen/provider/ProductProvider.dart';

class data_screen extends StatefulWidget {
  const data_screen({Key? key}) : super(key: key);

  @override
  State<data_screen> createState() => _data_screenState();
}

class _data_screenState extends State<data_screen> {
  ProductProvider? pt, pf;

  @override
  Widget build(BuildContext context) {
    pt = Provider.of<ProductProvider>(context, listen: true);
    pf = Provider.of<ProductProvider>(context, listen: false);

    int index = ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Product Data"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 220,
                      width: 250,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network("${pt!.l1[index].image}",
                              fit: BoxFit.fill)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 400,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Id:- ${pt!.l1[index].id}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          SizedBox(height: 5,),
                          Text("Price:- ${pt!.l1[index].price}",style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),),
                          SizedBox(height: 10,),
                          Text("Title:- ",style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(height: 5,),
                          Text("${pt!.l1[index].title}",style: TextStyle(color: Colors.grey.shade700,fontSize: 15,
                              fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text("Description:- ",style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),),
                          SizedBox(height: 5,),
                          Text("${pt!.l1[index].description}",style: TextStyle(color: Colors.grey.shade700,fontSize: 15,
                              fontWeight: FontWeight.bold),),
                        ],
                      )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
