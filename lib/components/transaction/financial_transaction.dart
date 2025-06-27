import 'package:caply/models/category_model.dart';
import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_date.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:caply/utils/transaction_types.dart';
import 'package:flutter/material.dart';

class FinancialTransaction extends StatelessWidget {
  final int id;
  final String type;
  final double amount;
  final CategoryModel category;
  final String description;
  final DateTime createdAt;

  const FinancialTransaction({
    super.key,
    required this.id,
    required this.type,
    required this.amount,
    required this.category,
    required this.description,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    String signe = type == TransactionTypes.expense ? '-' : '+';

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
                  decoration: BoxDecoration(
                    color: AppColors.accentPurple,
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Icon(
                    Icons.abc,
                  ), // Cambiar por le ícono de category mediante map
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      category.name,
                      style: TextStyle(
                        fontSize: AppTextSizes.medium,
                        fontWeight: FontWeight.w900,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(
                        description,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: AppTextSizes.small,
                          fontWeight: FontWeight.normal,
                          color: AppColors.textLight,
                        ),
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
                  "$signe\$$amount",
                  style: TextStyle(
                    fontSize: AppTextSizes.medium,
                    fontWeight: FontWeight.w900,
                    color: type == TransactionTypes.expense
                        ? AppColors.accentRed
                        : AppColors.accentGreen,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  AppDate.getRelativeTime(createdAt),
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
