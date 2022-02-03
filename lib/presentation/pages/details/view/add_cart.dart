import 'package:flutter/material.dart';
import 'package:himu_shop/domain/model/product.dart';

class AddToCard extends StatelessWidget {
  final VoidCallback? onChanged;
  AddToCard({this.onChanged, this.product});
  final Product? product;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(0.2))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Expanded(
          //   child: InkWell(
          //     onTap: () {
          //       onChanged!();
          //     },
          //     child: Container(
          //         decoration: BoxDecoration(
          //           color: Colors.deepOrange
          //         ),
          //         child: Center(
          //           child: Text('Buy Now',
          //               style: TextStyle(fontSize: 18, color: Colors.black)),
          //         )),
          //   ),
          // ),
          Expanded(
            child: InkWell(
              onTap: () {
                onChanged!();
              },
              child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_basket,color: Colors.white,),
                        Text('Add to Cart',
                            style:TextStyle(fontSize: 18, color: Colors.white)),
                      ],
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
