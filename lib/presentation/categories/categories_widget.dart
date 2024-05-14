import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/presentation/categories/single_category_widget.dart';

import '../../data/model/category_model.dart';


class CategoriesWidget extends StatelessWidget {
  List<CategoryModel> categoriesList = CategoryModel.getCategories();
  CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: REdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pick your category\nof interest",style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: 20.h,),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.h,
                  mainAxisSpacing: 15.w
                ),
                itemCount: categoriesList.length,
                itemBuilder: (context,index)=>InkWell(
                  onTap: (){},
                  child: SingleCategoryWidget(
                    index: index,
                    category: categoriesList[index],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
