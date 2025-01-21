import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/controller/product_controller.dart';
import 'package:provider_example/model/product_model.dart';
import 'package:provider_example/view/product_display.dart';

class GetProductDetails extends StatelessWidget {
  GetProductDetails({super.key});
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _productImageController = TextEditingController();
  final TextEditingController _productPriceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Example"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          TextFormField(
            controller: _productImageController,
            decoration: InputDecoration(
              hintText: "Add Product Image",
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _productNameController,
            decoration: InputDecoration(
              hintText: "Enter Product Name",
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          TextFormField(
            controller: _productPriceController,
            decoration: InputDecoration(
              hintText: "Enter Product Price",
              enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              border: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              var tempObj = ProductModel(
                productImage: _productImageController.text.trim(),
                productName: _productNameController.text.trim(),
                productPrice: _productPriceController.text.trim(),
                isFavorite: false,
                quantity: 0,
              );
              Provider.of<ProductController>(context, listen: false)
                  .addProductData(pObj: tempObj);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductDisplay();
              }));
            },
            child: const Text("Submit"),
          )
        ],
      ),
    );
  }
}
