import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app/domain/entities/source_entity.dart';

class SourceWidget extends StatelessWidget {
  SourceEntity source;
  bool isSelected;
  SourceWidget({super.key,required this.source,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4
      ),
      decoration: BoxDecoration(
        color: isSelected?Theme.of(context).colorScheme.primary:Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
            color: Theme.of(context).colorScheme.primary
        ),
      ),
      child: Text(
        source.name??"",
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: isSelected?Colors.white:Theme.of(context).colorScheme.primary
        ),
      ),
    );
  }
}
