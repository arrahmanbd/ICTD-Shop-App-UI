import 'package:flutter/material.dart';
import 'package:himu_shop/package/carousel.dart';

// import 'package:himu_shop/package/carousel.dart';
class ShopCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 20,
      height: 150.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Carousel(
          overlayShadow: false,
          borderRadius: true,
          boxFit: BoxFit.none,
          autoplay: true,
          dotSize: 4,
          dotBgColor: Colors.transparent,
          dotPosition: DotPosition.bottomRight,
          images: [
            FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://icms-image.slatic.net/images/ims-web/bcc8e5e4-dfc2-461a-97d2-c2b27ba6ad2f.jpg'),
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://icms-image.slatic.net/images/ims-web/3d8e4902-3582-4f52-8b57-728ac99c294a.jpg'),
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://icms-image.slatic.net/images/ims-web/48442b7e-2c79-4c4d-9e15-fad91923f5dd.jpg'),
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://icms-image.slatic.net/images/ims-web/29dd621f-90dc-4f42-b08a-2e3d653fa2d4.jpg'),
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: Image.network(
                  'https://icms-image.slatic.net/images/ims-web/a3973d1d-ba3d-4b92-95aa-3f56cdb3b18d.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}
