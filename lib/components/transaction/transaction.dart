import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
      child: FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(AppColors.gray4),
        ),
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 36,
                    height: 36,
                    color: AppColors.accentPurple,
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
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      Text(
                        "New brand mobile",
                        style: TextStyle(
                          fontSize: AppTextSizes.xs,
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
                      fontWeight: FontWeight.bold,
                      color: AppColors.accentRed,
                    ),
                  ),
                  Text(
                    "May 05",
                    style: TextStyle(
                      fontSize: AppTextSizes.xs,
                      color: AppColors.textLight,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
