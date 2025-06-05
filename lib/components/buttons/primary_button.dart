import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_icon_sizes.dart';
import 'package:caply/utils/app_text_sizes.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final Function() onClick;
  final String label;
  final IconData? icon;

  const PrimaryButton({
    super.key,
    required this.onClick,
    required this.label,
    this.icon,
  });

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: widget.onClick,
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(AppColors.primaryBtnDefault),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: AppIconSizes.large,
              color: AppColors.primaryBtnLabel,
            ),
            SizedBox(width: 8),
            Text(
              widget.label,
              style: TextStyle(
                color: AppColors.primaryBtnLabel,
                fontWeight: FontWeight.bold,
                fontSize: AppTextSizes.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
