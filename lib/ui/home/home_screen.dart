import 'package:flutter/material.dart';
import 'package:news_app/ui/categories/categories_widget.dart';
import 'package:news_app/ui/home/widgets/home_drawer_widget.dart';
import 'package:news_app/ui/settings/settings_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedWidget = CategoriesWidget();
  }
  late Widget selectedWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/background.jpg"),fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("News App"),
        ),
        drawer: HomeDrawerWidget(onItemMenuClicked: onMenuItemClicked,),
        body: selectedWidget,
      ),
    );
  }

  void onMenuItemClicked(MenuItems item){
    switch(item){
      case MenuItems.Categories:{
        selectedWidget = CategoriesWidget();
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
}
