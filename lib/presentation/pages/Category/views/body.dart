import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:himu_shop/domain/model/category.dart';
import 'package:himu_shop/presentation/pages/Category/categories_controller.dart';

class CategoriesTile extends StatelessWidget {
  final controller = Get.find<CatergoriesController>();
  final ValueChanged<int>? onChanged;
  final List<Category>? categoriesList;

  CategoriesTile({this.categoriesList, this.onChanged});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          categoriesList!.isEmpty ? 0 : categoriesList!.length,
          (index) => Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                color: Colors.white,
                child: InkWell(
                  onTap: () {
                    onChanged!(index);
                    print(categoriesList![index].title);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.all(10.0),
                          height: 35,
                          child: Center(
                            child: Text(
                              categoriesList![index].title!,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          )),
                      Image.asset(
                        'assets/images/default.png',
                        height: 25,
                      ),
                    ],
                  ),
                )),
          ),
        )
      ],
    );
  }
}
