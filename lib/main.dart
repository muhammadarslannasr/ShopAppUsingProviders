import 'package:flutter/material.dart';
import 'package:fluttermyshopapp/providers/cart.dart';
import 'package:fluttermyshopapp/providers/orders.dart';
import 'package:fluttermyshopapp/providers/products.dart';
import 'package:fluttermyshopapp/screens/cart_screen.dart';
import 'package:fluttermyshopapp/screens/orders_screen.dart';
import 'package:fluttermyshopapp/screens/product_detail_screen.dart';
import 'package:fluttermyshopapp/screens/products_overview_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Products(),
        ),
        ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'MyShop',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
