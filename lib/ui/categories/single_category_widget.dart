import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';

class SingleCategoryWidget extends StatelessWidget {
  CategoryModel category;
  int index;
  SingleCategoryWidget({super.key,required this.index,required this.category});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
          bottomRight: index%2==0?Radius.circular(25):Radius.circular(0),
          bottomLeft: index%2==0?Radius.circular(0):Radius.circular(25),
        ),
        color: category.color,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(category.imagePath,height: height*0.13,fit: BoxFit.fitHeight,),
          Text(category.title,style: Theme.of(context).textTheme.titleSmall,),
        ],
      ),
    );
  }
}
