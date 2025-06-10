import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  // final String category;
  // final String description;
  // final double value;
  // final DateTime date;

  const Transaction({
    super.key,
    // required this.category,
    // required this.description,
    // required this.value,
    // required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: () {},
        style: FilledButton.styleFrom(
          padding: EdgeInsets.all(16),
          backgroundColor: AppColors.surfaceLight,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  // color: AppColors.accentPurple,
                  decoration: BoxDecoration(
                    color: AppColors.accentPurple,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                SizedBox(width: 8),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shopping",
                      style: TextStyle(
                        fontSize: AppTextSizes.medium,
                        fontWeight: FontWeight.w900,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Text(
                      "New brand mobile",
                      style: TextStyle(
                        fontSize: AppTextSizes.small,
                        fontWeight: FontWeight.normal,
                        color: AppColors.textLight,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "-\$550",
                  style: TextStyle(
                    fontSize: AppTextSizes.medium,
                    fontWeight: FontWeight.w900,
                    color: AppColors.accentRed,
                  ),
                ),
                Text(
                  "May 05",
                  style: TextStyle(
                    fontSize: AppTextSizes.small,
                    fontWeight: FontWeight.normal,
                    color: AppColors.textLight,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
