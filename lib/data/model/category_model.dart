import 'dart:ui';

import 'package:news_app/core/utils/assets_manager.dart';
import 'package:news_app/core/utils/colors_manager.dart';

class CategoryModel{
  String id;
  String title;
  Color color;
  String imagePath;

  CategoryModel({required this.id,required this.title, required this.imagePath, required this.color});

  static List<CategoryModel> getCategories()=>[
    CategoryModel(id: "sports", title: "Sports", imagePath: AssetsManager.sportsCategoryIcon, color: ColorsManager.sportsCategoryColor),
    CategoryModel(id: "general",title: "General", imagePath: AssetsManager.generalCategoryIcon, color: ColorsManager.generalCategoryColor),
    CategoryModel(id: "health",title: "Health", imagePath: AssetsManager.healthCategoryIcon, color: ColorsManager.healthCategoryColor),
    CategoryModel(id: "business",title: "Business", imagePath: AssetsManager.businessCategoryIcon, color: ColorsManager.businessCategoryColor),
    CategoryModel(id: "technology",title: "Technology", imagePath: AssetsManager.technologyCategoryIcon, color: ColorsManager.technologyCategoryColor),
    CategoryModel(id: "science",title: "Science", imagePath: AssetsManager.scienceCategoryIcon, color: ColorsManager.scienceCategoryColor),
  ];
}