import 'package:flutter/material.dart';
import 'package:news_app/shared/style/app_colors.dart';

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
            height: 120,
            color: Theme.of(context).colorScheme.primary,
            alignment: Alignment.center,
            child: Text("News App!",style: Theme.of(context).textTheme.titleMedium,),
          ),
          SizedBox(height: 15,),
          TextButton(
            onPressed: (){
              onItemMenuClicked(MenuItems.Categories);
            },
            child: Row(
              children: [
                Icon(Icons.list,color: AppColors.drawerIconsColor,size: 28,),
                SizedBox(width: 10,),
                Text("Categories",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: AppColors.drawerIconsColor
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
                  Icon(Icons.settings,color: AppColors.drawerIconsColor,size: 28,),
                  SizedBox(width: 10,),
                  Text("Settings",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: AppColors.drawerIconsColor
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
