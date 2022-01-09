import 'package:flutter/material.dart';
import 'package:furnitureshop/data.dart';
import 'package:furnitureshop/widgets/category_card.dart';

class CategoryCardScroller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120.0,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
          },
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Data.categories.length,
            itemBuilder: (context, index) =>
                CategoryCard(Data.categories[index], index),
          ),
        ));
  }
}
