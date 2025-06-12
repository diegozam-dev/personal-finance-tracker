import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_icon_sizes.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class SeeAllBtn extends StatelessWidget {
  const SeeAllBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36,
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: WidgetStatePropertyAll(AppColors.seeAllBtnLabel),
        ),
        child: Row(
          children: [
            Text(
              "See all",
              style: TextStyle(
                fontSize: AppTextSizes.small,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(width: 4),
            Icon(Icons.arrow_forward, size: AppIconSizes.small),
          ],
        ),
      ),
    );
  }
}
