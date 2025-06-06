import 'package:caply/utils/app_colors.dart';
import 'package:caply/utils/app_icon_sizes.dart';
import 'package:flutter/material.dart';

class IconBtn extends StatefulWidget {
  final Function() onClick;
  final IconData icon;
  final bool? isContrast;

  const IconBtn({
    super.key,
    required this.onClick,
    required this.icon,
    this.isContrast,
  });

  @override
  State<IconBtn> createState() => _IconBtnState();
}

class _IconBtnState extends State<IconBtn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: 52,
      child: IconButton(
        onPressed: widget.onClick,
        icon: Icon(widget.icon, size: AppIconSizes.large),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            widget.isContrast == null || widget.isContrast == false
                ? AppColors.iconBtnDefault
                : AppColors.iconBtnContrast,
          ),
          foregroundColor: WidgetStatePropertyAll(
            widget.isContrast == null || widget.isContrast == false
                ? AppColors.iconBtnLabel
                : AppColors.iconBtnLabelContrast,
          ),
        ),
      ),
    );
  }
}
