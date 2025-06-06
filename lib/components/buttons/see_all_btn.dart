import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class SeeAllBtn extends StatefulWidget {
  const SeeAllBtn({super.key});

  @override
  State<SeeAllBtn> createState() => _SeeAllBtnState();
}

class _SeeAllBtnState extends State<SeeAllBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          // Corregir color al hacer click
          foregroundColor: WidgetStatePropertyAll(AppColors.seeAllBtnLabel),
          backgroundColor: WidgetStatePropertyAll(AppColors.seeAllBtnDefault),
        ),
        child: Row(
          children: [
            Text("See all", style: TextStyle(fontSize: AppTextSizes.small)),
          ],
        ),
      ),
    );
  }
}
