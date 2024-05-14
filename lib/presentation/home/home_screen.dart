import 'package:flutter/material.dart';
import 'package:news_app/presentation/home/widgets/home_drawer_widget.dart';
import '../../data/model/category_model.dart';
import '../categories/categories_widget.dart';
import '../categories/category_details.dart';
import '../settings/settings_widget.dart';


class HomeScreen extends StatefulWidget {
  static const String route = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    selectedWidget = CategoriesWidget(categoryClick: onCategoryItemClick,);
  }
  late Widget selectedWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/background.jpg"),fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("News App"),
        ),
        drawer: HomeDrawerWidget(onItemMenuClicked: onMenuItemClicked,),
        body: selectedWidget,
      ),
    );
  }

  void onMenuItemClicked(MenuItems item){
    switch(item){
      case MenuItems.Categories:{
        selectedWidget = CategoriesWidget(categoryClick: onCategoryItemClick,);
        Navigator.of(context).pop();
        setState(() {

        });
      }
      break;
      case MenuItems.Settings:{
        selectedWidget = SettingsWidget();
        Navigator.of(context).pop();
        setState(() {

        });
      }
    }
  }
  void onCategoryItemClick(CategoryModel categoryModel){
    selectedWidget = CategoryDetails(categoryModel: categoryModel,);
    setState(() {

    });
  }
}
