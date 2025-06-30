import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_icon_sizes.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class OutlineBtn extends StatelessWidget {
  final Function() onClick;
  final String label;
  final IconData? icon;
  final Color? color;

  const OutlineBtn({
    super.key,
    required this.onClick,
    required this.label,
    this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onClick,
        style: color != null
            ? ButtonStyle(
                overlayColor: WidgetStatePropertyAll(color!.withOpacity(0.1)),
                foregroundColor: WidgetStatePropertyAll(color),
                side: WidgetStatePropertyAll(BorderSide(color: color!)),
              )
            : ButtonStyle(
                overlayColor: WidgetStatePropertyAll(
                  AppColors.outlineBtnOverlay,
                ),
                foregroundColor: WidgetStatePropertyAll(
                  AppColors.outlineBtnDefault,
                ),
                side: WidgetStatePropertyAll(
                  BorderSide(color: AppColors.outlineBtnDefault),
                ),
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon == null ? Text('') : Icon(icon, size: AppIconSizes.large),
            icon == null ? SizedBox(width: 0) : SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: AppTextSizes.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
