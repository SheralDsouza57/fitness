import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    super.key,
    required this.text,
    required this.isSelected,
  });

  final String text;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? AppColors.white : AppColors.featherGrey,
        borderRadius: BorderRadius.circular(23.5.r),
      ),
      width: 164.w,
      height: 37.h,
      child: Center(
        child: TextWidget(
          text: text,
          color: isSelected ? AppColors.blue : AppColors.grey,
          fontweight: isSelected ? FontWeight.w600 : FontWeight.w500,
          fontsize: 12.h,
        ),
      ),
    );
  }
}
