import 'package:caply/models/goal_model.dart';
import 'package:caply/utils/app_accent_colors.dart';
import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_date_utils.dart';
import 'package:caply/utils/app_icon_sizes.dart';
import 'package:caply/utils/app_icons.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:caply/utils/transaction_types.dart';
import 'package:flutter/material.dart';

class GoalTransaction extends StatelessWidget {
  final int id;
  final TransactionTypes type = TransactionTypes.goal;
  final double amount;
  final GoalModel goal;
  final DateTime date;

  const GoalTransaction({
    super.key,
    required this.id,
    required this.amount,
    required this.goal,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    int progress = ((goal.savedAmount / goal.goalAmount) * 100).round();

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
                goal.icon != null
                    ? Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: getAccentColorByName(goal.color!),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          getIconByName(goal.icon!),
                          size: AppIconSizes.large,
                        ),
                      )
                    : SizedBox(
                        width: 40,
                        height: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            goal.imageUrl!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      goal.name,
                      style: TextStyle(
                        fontSize: AppTextSizes.medium,
                        fontWeight: FontWeight.w900,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: 200),
                      child: Text(
                        'Progress: $progress%',
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
                  "\$$amount",
                  style: TextStyle(
                    fontSize: AppTextSizes.medium,
                    fontWeight: FontWeight.w900,
                    color: AppColors.accentGreen,
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
