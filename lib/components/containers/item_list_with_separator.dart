import 'package:caply/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ItemListWithSeparator extends StatelessWidget {
  final List<Widget> items;

  const ItemListWithSeparator({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return items[index];
      },
      separatorBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(left: 16, right: 16),
          child: Divider(color: AppColors.divider, height: 1, thickness: 1),
        );
      },
    );
  }
}
