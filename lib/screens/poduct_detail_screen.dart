import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {

  static String routeName = '/product_detail_screen';

  @override
  Widget build(BuildContext context) {

    final String productId = ModalRoute.of(context).settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text('Hello'),
      ),
    );
  }
}
