import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/poduct_detail_screen.dart';
import '../models/product.dart';

class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<Product>(
      child: Text('Never changes!'),
      builder: (ctx, product, child) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .pushNamed(ProductDetailScreen.routeName, arguments: product.id),
          child: GridTile(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                onPressed: () {
                  product.toggleFavorite();
                },
                icon: Icon(Icons.favorite),
                color: product.isFavorite ? Theme.of(context).primaryColor : Theme.of(context).accentColor,
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_cart),
                color: Theme.of(context).accentColor,
              ),
              title: Text(
                product.title,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
