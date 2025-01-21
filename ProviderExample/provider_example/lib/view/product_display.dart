import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controller/product_controller.dart';

class ProductDisplay extends StatelessWidget {
  const ProductDisplay({super.key});
  @override
  Widget build(BuildContext context) {
    var providerObj = Provider.of<ProductController>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Product"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.network("${providerObj.productModelObj?.productImage}"),
              SizedBox(height: 10),
              Text("${providerObj.productModelObj?.productName}"),
              const SizedBox(height: 10),
              Text("${providerObj.productModelObj?.productPrice}"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Consumer<ProductController>(
                    builder: (context, provider, child) {
                      return GestureDetector(
                        onTap: () {
                          providerObj.addToFav();
                        },
                        child: Icon(
                          (providerObj.productModelObj!.isFavorite!)
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
                          providerObj.addQuantity();
                        },
                        child: const Icon(
                          Icons.add,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Consumer<ProductController>(
                        builder: (context, provider, child) {
                          return Text(
                              "${providerObj.productModelObj?.quantity}");
                        },
                      ),
                      const SizedBox(width: 5),
                      GestureDetector(
                        onTap: () {
                          providerObj.removeQuantity();
                        },
                        child: const Icon(
                          Icons.remove,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
