import 'package:caply/models/category_model.dart';
import 'package:caply/utils/app_accent_colors.dart';
import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_date_utils.dart';
import 'package:caply/utils/app_icon_sizes.dart';
import 'package:caply/utils/app_icons.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:caply/utils/transaction_types.dart';
import 'package:flutter/material.dart';

class FinancialTransaction extends StatelessWidget {
  final int id;
  final TransactionTypes type;
  final double amount;
  final CategoryModel category;
  final String description;
  final DateTime date;

  const FinancialTransaction({
    super.key,
    required this.id,
    required this.type,
    required this.amount,
    required this.category,
    required this.description,
    required this.date,
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
                    color: getAccentColorByName(category.color),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  child: Icon(
                    getIconByName(category.icon),
                    size: AppIconSizes.large,
                  ),
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
                    Container(
                      constraints: BoxConstraints(maxWidth: 220),
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
                Text(
                  AppDateUtils.getRelativeTime(date),
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
