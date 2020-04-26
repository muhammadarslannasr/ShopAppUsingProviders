import 'package:flutter/material.dart';

class CartItemRow extends StatelessWidget {
  final String id;
  final double price;
  final int quantity;
  final String title;

  CartItemRow(this.id, this.price, this.quantity, this.title);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: EdgeInsets.all(
                5.0,
              ),
              child: FittedBox(
                child: Text(
                  '\$${price}',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          title: Text(
            title,
          ),
          subtitle: Text(
            'Total: \$${price * quantity}',
          ),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}
