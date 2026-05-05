import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_details_screen.dart';

class ProductsScreen extends StatelessWidget {
  final List<Product> products = [
    Product(name: "Laptop", description: "Powerful laptop", price: 1000),
    Product(name: "Phone", description: "Smart phone", price: 500),
    Product(name: "Headphones", description: "Good sound", price: 150),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text("\$${products[index].price}"),
            onTap: () async {
              final result = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsScreen(
                    product: products[index],
                  ),
                ),
              );

              if (result != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(result)),
                );
              }
            },
          );
        },
      ),
    );
  }
}