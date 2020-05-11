import 'package:flutter/material.dart';
import '../models/products.dart';

class ProductsItem extends StatelessWidget {
  final Product _product;

  ProductsItem(this._product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: Image.network(
          _product.imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black.withOpacity(0.6),
          leading: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          title: Text(
            _product.title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
