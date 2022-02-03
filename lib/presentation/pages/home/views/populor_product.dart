import 'package:flutter/material.dart';
import 'package:himu_shop/domain/model/product.dart';
import 'package:himu_shop/presentation/widgets/product_tile.dart';
class PopulorProduct extends StatelessWidget {
  final List<Product>? products;
  PopulorProduct({this.products});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...List.generate(products != null ? products!.length : 3, (index) {
            return ProductTile(
                product: products != null ? products![index] : null);
          })
        ],
      ),
    );
  }
}
