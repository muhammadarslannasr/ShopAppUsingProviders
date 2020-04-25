import 'package:flutter/material.dart';
import 'package:fluttermyshopapp/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID = ModalRoute.of(context).settings.arguments as String; // is the id!
    final productLoaded = Provider.of<Products>(context).findById(productID);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productLoaded.title,
        ),
      ),
    );
  }
}
