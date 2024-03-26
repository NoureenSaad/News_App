import 'package:flutter/material.dart';
import 'package:news_app/ui/categories/single_category_widget.dart';

import '../../model/category_model.dart';

class CategoriesWidget extends StatelessWidget {
  List<CategoryModel> categoriesList = CategoryModel.getCategories();
  CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pick your category\nof interest",style: Theme.of(context).textTheme.labelMedium,),
            SizedBox(height: 20,),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15
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
