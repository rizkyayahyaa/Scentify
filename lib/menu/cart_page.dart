import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/cart_provider.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: cart.items.isEmpty
          ? Center(child: Text('No items in cart'))
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final cartItem = cart.items[index];
                return ListTile(
                  leading: Image.asset(cartItem.image),
                  title: Text(cartItem.name),
                  subtitle: Text('Size: ${cartItem.size} ml'),
                  trailing: Text('Qty: ${cartItem.quantity}'),
                );
              },
            ),
    );
  }
}
