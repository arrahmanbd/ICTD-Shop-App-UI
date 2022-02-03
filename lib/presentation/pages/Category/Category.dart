import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himu_shop/domain/model/category.dart';
import 'package:himu_shop/presentation/pages/Category/categories_controller.dart';
import 'package:himu_shop/presentation/pages/Category/category_products.dart';
import 'package:himu_shop/presentation/pages/Category/views/body.dart';

import 'package:himu_shop/presentation/routes/app_routes.dart';

import 'package:himu_shop/presentation/widgets/scaffold.dart';

class CategorieScreen extends StatelessWidget {
  final controller = Get.find<CatergoriesController>();
  final int index;
  CategorieScreen(this.index);

  final List<dynamic> data = [
    {
      "title": "Laptop",
      "children": [
        {"title": "Asus", "children": []},
        {"title": "Lenovo", "children": []},
        {"title": "Asus", "children": []},
        {"title": "Dell", "children": []},
        {"title": "Hp", "children": []},
        {"title": "Apple", "children": []}
      ]
    },
    {
      "title": "Mobile",
      "children": [
        {"title": "Xiomi", "children": []},
        {"title": "Lenovo", "children": []},
        {"title": "iphone", "children": []},
        {"title": "Gionee", "children": []},
        {"title": "Samsung", "children": []},
        {"title": "Nokia", "children": []}
      ]
    },
    {
      "title": "Electronic",
      "children": [
        {
          "title": "charger",
          "children": [
            {"title": "mobile charger", "children": []}
          ]
        },
        {"title": "mobile charger", "children": []},
        {"title": "Earphone", "children": []}
      ]
    },
    {
      "title": "Clothes",
      "children": [
        {"title": "Hoodies", "children": []},
        {"title": "Nice", "children": []},
        {"title": "T-shirts", "children": []},
        {"title": "Shirts", "children": []}
      ]
    }
  ];

  _buldContainer(List<Category> data) {
    return Column(
      children: [
        ...List.generate(
            data.length,
            (index) => data[index].children!.length != 0
                ? ExpansionTile(
                    title: Text(data[index].title!),
                    children: [_buldAgainContainer(data[index].children!)],
                  )
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: double.infinity,
                        child: Text(
                          data[index].title!,
                          textAlign: TextAlign.start,
                        )),
                  ))
      ],
    );
  }

  _buldAgainContainer(List<Category> data) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
            data.length,
            (index) => data[index].children!.length != 0
                ? ExpansionTile(
                    title: Text(data[index].title!),
                    children: [],
                  )
                : Container(
                    width: double.infinity,
                    child: Text(
                      data[index].title!,
                      textAlign: TextAlign.start,
                    )))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Category> categoryList =
        data.map((dynamic e) => Category.fromJson(e)).toList();

    return SafeArea(
      child: HimuShopScaffold(
        title: 'Category',
        background: null,
        body:
            // body: SingleChildScrollView(
            //   child: Column(
            //     children: [
            //       ...List.generate(
            //           categoryList.length,
            //           (index) => Padding(
            //                 padding: const EdgeInsets.symmetric(vertical: 10),
            //                 child: Container(
            //                   child: ExpansionTile(
            //                     title: Container(
            //                       height: 80,
            //                       decoration: BoxDecoration(),
            //                       child: Row(
            //                         children: [
            //                           Image.asset('assets/images/facebook.png'),
            //                           SizedBox(
            //                             width: 50,
            //                           ),
            //                           Text(categoryList[index].title),
            //                         ],
            //                       ),
            //                     ),
            //                     children: [_buldContainer(categoryList[index].children)],
            //                   ),
            //                 ),
            //               ))
            //     ],
            //   ),
            // ),

            Obx(() {
          if (!controller.isLoading.value)
            return CategoriesTile(
              categoriesList: categoryList,
              onChanged: (index) {
                controller.loadCategoryProducts(categoryList[index].title);
                navigator!.pushNamed(HimuShopRoutes.categoryProduct,
                    arguments: CategoryArguments(
                        categoryName: categoryList[index].title,
                        product: controller.categoryProducts,
                        category: categoryList[index].children));
              },
            );
          else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }),
        bottomMenuIndex: 1,
      ),
    );
  }
}
