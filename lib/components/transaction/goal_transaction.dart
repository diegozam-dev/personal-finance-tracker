import 'package:caply/models/goal_model.dart';
import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_date.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class GoalTransaction extends StatelessWidget {
  final int id;
  final String type;
  final double amount;
  final GoalModel goal;
  final DateTime date;

  const GoalTransaction({
    super.key,
    required this.id,
    required this.type,
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
                          color: AppColors
                              .accentPurple, // Cambiar por el color de goal mediante map
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.abc,
                        ), // Cambiar por le ícono de goal mediante map
                      )
                    : SizedBox(
                        width: 40,
                        height: 40,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            goal.imageUrl ??
                                'https://img.freepik.com/vector-premium/icono-marco-fotos-foto-vacia-blanco-vector-sobre-fondo-transparente-aislado-eps-10_399089-1290.jpg',
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
                    SizedBox(height: 4),
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
                SizedBox(height: 4),
                Text(
                  AppDate.getRelativeTime(date),
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
