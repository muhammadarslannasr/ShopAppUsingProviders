import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermyshopapp/providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    final productID =
        ModalRoute.of(context).settings.arguments as String; // is the id!
    final productLoaded = Provider.of<Products>(context).findById(productID);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productLoaded.title,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                productLoaded.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: Text(
                '\$${productLoaded.price}',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              productLoaded.description,
              textAlign: TextAlign.center,
              softWrap: true,
            )
          ],
        ),
      ),
    );
  }
}
