import 'dart:ui';

import 'package:news_app/core/utils/colors_manager.dart';

class CategoryModel{
  String id;
  String title;
  Color color;
  String imagePath;

  CategoryModel({required this.id,required this.title, required this.imagePath, required this.color});

  static List<CategoryModel> getCategories()=>[
    CategoryModel(id: "sports", title: "Sports", imagePath: "assets/images/ball.png", color: ColorsManager.sportsCategoryColor),
    CategoryModel(id: "general",title: "General", imagePath: "assets/images/Politics.png", color: ColorsManager.generalCategoryColor),
    CategoryModel(id: "health",title: "Health", imagePath: "assets/images/health.png", color: ColorsManager.healthCategoryColor),
    CategoryModel(id: "business",title: "Business", imagePath: "assets/images/business.png", color: ColorsManager.businessCategoryColor),
    CategoryModel(id: "technology",title: "Technology", imagePath: "assets/images/technology.png", color: ColorsManager.technologyCategoryColor),
    CategoryModel(id: "science",title: "Science", imagePath: "assets/images/science.png", color: ColorsManager.scienceCategoryColor),
  ];
}