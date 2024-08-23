import 'package:fitness/presentation/widgets/bounce_effect.dart';
import 'package:fitness/presentation/widgets/image_widget.dart';
import 'package:fitness/presentation/widgets/start_row.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_icons.dart';
import 'package:fitness/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssessmentCard extends StatelessWidget {
  const AssessmentCard({
    super.key,
    required this.play,
  });
  final BounceEffect play;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 3.h),
      width: 308.w,
      height: 100.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11.r),
        color: AppColors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageWidget(
            image: AppImages.assessment1,
            width: 113.w,
            height: 116.h,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.all(8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  width: 130.w,
                  text: 'Fitness Assessment',
                  fontweight: FontWeight.w600,
                  fontsize: 10.h,
                  maxlines: 2,
                  color: AppColors.navyBlue,
                ),
                TextWidget(
                  width: 130.w,
                  text:
                      'Get Started On Your Fitness Goals With Our Physical Assessment And Vital Scan ',
                  fontweight: FontWeight.w500,
                  fontsize: 8.h,
                  maxlines: 3,
                  color: AppColors.coalBlack,
                ),
                SizedBox(height: 3.h),
                play
              ],
            ),
          )
        ],
      ),
    );
  }
}
