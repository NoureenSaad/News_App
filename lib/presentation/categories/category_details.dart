import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/core/DI/di.dart';
import 'package:news_app/presentation/categories/source_widget.dart';
import 'package:news_app/presentation/categories/view_model/sources_view_model/sources_view_model.dart';
import '../../data/model/category_model.dart';

class CategoryDetails extends StatefulWidget {
  CategoryModel categoryModel;

  CategoryDetails({super.key,required this.categoryModel});

  @override
  State<CategoryDetails> createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  int selectedSource = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>getIt<SourcesViewModel>()..getSources(widget.categoryModel.id),
      child: BlocBuilder<SourcesViewModel,SourcesViewModelState>(
        builder: (BuildContext context, SourcesViewModelState state){
          if(state is SourcesViewModelError){
            return Text(state.error);
          }
          if(state is SourcesViewModelSuccess){
            var sources = state.sourceEntityList;
            return DefaultTabController(
                length: state.sourceEntityList.length,
                child: Padding(
                    padding: REdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      TabBar(
                        onTap: (index){
                          selectedSource = index;
                          setState(() {

                          });
                        },
                        isScrollable: true,
                        indicatorColor: Colors.transparent,
                        dividerColor: Colors.transparent,
                        tabs: sources.map((source) => SourceWidget(
                          source: source,
                          isSelected: selectedSource == sources.indexOf(source),
                        )).toList()
                      )
                    ],
                  ),
                )
            );
          }
          return const Center(child: CircularProgressIndicator.adaptive(),);
        },

      ),
    );
  }
}
