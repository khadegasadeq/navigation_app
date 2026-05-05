import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  ProductDetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(product.description),
            SizedBox(height: 10),
            Text("Price: \$${product.price}"),

            SizedBox(height: 30),

            ElevatedButton(
              child: Text("Back with Result"),
              onPressed: () {
                Navigator.pop(context, "تم الرجوع من ${product.name}");
              },
            ),
          ],
        ),
      ),
    );
  }
}