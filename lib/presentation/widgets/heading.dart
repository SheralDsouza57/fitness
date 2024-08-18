import 'package:fitness/presentation/widgets/image_widget.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Heading extends StatelessWidget {
  const Heading({
    super.key,
    required this.heading,
    required this.sideHeading,
  });
  final String heading;
  final String sideHeading;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          padding: EdgeInsets.only(left: 15.w),
          text: heading,
          fontsize: 14.h,
          fontweight: FontWeight.w500,
          color: AppColors.darkCharcoal,
        ),
        Row(
          children: [
            TextWidget(
              text: sideHeading,
              fontsize: 12.h,
              fontweight: FontWeight.w500,
              color: AppColors.darkCharcoal,
              underline: TextDecoration.underline,
            ),
            SizedBox(width: 10.w),
            ImageWidget(
              image: AppIcons.forwardArrow,
              height: 22.h,
              width: 22.w,
            )
          ],
        ),
      ],
    );
  }
}
