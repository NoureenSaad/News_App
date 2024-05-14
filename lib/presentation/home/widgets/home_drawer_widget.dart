import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/utils/colors_manager.dart';

typedef onItemClicked = void Function (MenuItems item);
class HomeDrawerWidget extends StatelessWidget {
  onItemClicked onItemMenuClicked;
  HomeDrawerWidget({super.key,required this.onItemMenuClicked});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 120.h,
            color: Theme.of(context).colorScheme.primary,
            alignment: Alignment.center,
            child: Text("News App!",style: Theme.of(context).textTheme.titleMedium,),
          ),
          SizedBox(height: 15.h,),
          TextButton(
            onPressed: (){
              onItemMenuClicked(MenuItems.Categories);
            },
            child: Row(
              children: [
                Icon(Icons.list,color: ColorsManager.drawerIconsColor,size: 28.sp,),
                SizedBox(width: 10.w,),
                Text("Categories",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: ColorsManager.drawerIconsColor
                ),)
              ],
            )
          ),
          TextButton(
              onPressed: (){
                onItemMenuClicked(MenuItems.Settings);
              },
              child: Row(
                children: [
                  Icon(Icons.settings,color: ColorsManager.drawerIconsColor,size: 28.sp,),
                  SizedBox(width: 10.w,),
                  Text("Settings",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: ColorsManager.drawerIconsColor
                  ),)
                ],
              )
          )
        ],
      ),
    );
  }
}

enum MenuItems{
  Categories,
  Settings
}
