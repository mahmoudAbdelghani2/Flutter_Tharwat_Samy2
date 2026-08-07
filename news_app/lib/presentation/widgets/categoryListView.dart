// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/consts/utils.dart';
import 'package:news_app_ui_setup/models/category_model.dart';
import 'package:news_app_ui_setup/presentation/widgets/category_widget.dart';

class CategoriesListViweWidget extends StatelessWidget {
  const CategoriesListViweWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categories = Utils.categories;
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryWidget(
              imagePath: categories[index].imageAssetUrl,
              categoryName: categories[index].categoryName,
            );
          }),
    );
  }
}
