import 'package:fitness/presentation/widgets/image_widget.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoutineCard extends StatelessWidget {
  const RoutineCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.w),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightGrey),
        borderRadius: BorderRadius.circular(16.r),
      ),
      width: 210.w,
      height: 86.h,
      child: Row(
        children: [
          const ImageWidget(
            image: AppImages.routine1,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 7.h),
                TextWidget(
                  text: 'Sweat Starter',
                  fontweight: FontWeight.w500,
                  fontsize: 11.h,
                  color: AppColors.darkCharcoal,
                ),
                TextWidget(
                  text: 'Full Body',
                  fontweight: FontWeight.w400,
                  fontsize: 9.h,
                  color: AppColors.grey,
                ),
                SizedBox(height: 5.h),
                Container(
                  width: 66.w,
                  height: 21.h,
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.grey),
                      borderRadius: BorderRadius.circular(21.r)),
                  child: Center(
                    child: TextWidget(
                      text: 'Lose Weight',
                      fontweight: FontWeight.w600,
                      fontsize: 7.h,
                      color: AppColors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Row(
                  children: [
                    TextWidget(
                      text: 'Difficulty :',
                      fontweight: FontWeight.w400,
                      fontsize: 9.h,
                      color: AppColors.grey,
                    ),
                    TextWidget(
                      text: ' Medium',
                      fontweight: FontWeight.w600,
                      fontsize: 9.h,
                      color: AppColors.babyPink,
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
