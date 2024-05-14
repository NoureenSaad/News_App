import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/model/category_model.dart';

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
          topLeft: Radius.circular(25.r),
          topRight: Radius.circular(25.r),
          bottomRight: index%2==0?Radius.circular(25.r):Radius.circular(0.r),
          bottomLeft: index%2==0?Radius.circular(0.r):Radius.circular(25.r),
        ),
        color: category.color,
      ),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(category.imagePath,height: (height*0.13).h,fit: BoxFit.fitHeight,),
          Text(category.title,style: Theme.of(context).textTheme.titleSmall,),
        ],
      ),
    );
  }
}
