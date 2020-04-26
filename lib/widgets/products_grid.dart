import 'package:flutter/material.dart';
import 'package:fluttermyshopapp/providers/products.dart';
import 'package:fluttermyshopapp/widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {
  final bool isFavs;

  ProductsGrid(this.isFavs);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = isFavs ? productsData.isFavourite() : productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(
        10.0,
      ),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        value: products[i],
        //create: (ctx) => products[i],
        child: ProductItem(),
      ),
    );
  }
}
