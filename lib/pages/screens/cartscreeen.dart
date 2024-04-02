import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with the actual number of cart items
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Product ${index + 1}'),
            subtitle: const Text('Price: \$100'),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                // Remove the item from the cart
              },
            ),
          );
        },
      ),
    );
  }
}
