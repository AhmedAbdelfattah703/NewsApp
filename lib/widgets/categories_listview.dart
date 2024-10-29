//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({
    super.key,
  });
    List<CategoryModel>categores = [
      CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'business'),
      CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'entertainment'),
      CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'health'),
      CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'science'),
      CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'sports'),
      CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'technology'),
      CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'general'),
      //CategoryModel(imageAssetUrl: 'assets/technology.jpeg', categoryName: 'categoryName'),
      
    ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categores.length,
        itemBuilder: (context, index){
        return  CategoryCard(
          category: categores[index],
        );
      }),
    );
  }
}