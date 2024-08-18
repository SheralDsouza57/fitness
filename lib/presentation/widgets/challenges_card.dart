import 'package:fitness/presentation/widgets/image_widget.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_icons.dart';
import 'package:fitness/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChallengesCard extends StatelessWidget {
  const ChallengesCard({
    super.key,
    required this.progress,
    required this.completedTasks,
    required this.totalTasks,
  });

  final double progress;
  final int completedTasks;
  final int totalTasks;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.r),
            color: AppColors.babyGreen,
          ),
          height: 133.h,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: 'Today\'s Challenge!',
                fontweight: FontWeight.w600,
                color: AppColors.oliveGreen,
                fontsize: 12.h,
              ),
              SizedBox(height: 5.h),
              Container(
                height: 18.h,
                width: 84.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: AppColors.oliveGreen,
                ),
                child: Center(
                  child: TextWidget(
                    text: 'Push Up 20x!',
                    fontweight: FontWeight.w500,
                    color: AppColors.white,
                    fontsize: 10.h,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                width: 145.w,
                child: LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(7.r),
                  value: progress,
                  backgroundColor: AppColors.white,
                  color: AppColors.babyPink,
                  minHeight: 10.h,
                ),
              ),
              SizedBox(height: 4.h),
              TextWidget(
                text: '$completedTasks/$totalTasks Complete',
                fontweight: FontWeight.w400,
                color: AppColors.darkCharcoal,
                fontsize: 9.h,
              ),
              SizedBox(height: 8.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                width: 98.w,
                height: 27.h,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageWidget(
                      image: AppIcons.playMinimized,
                      width: 19.w,
                      height: 19.w,
                    ),
                    TextWidget(
                      text: 'Continue',
                      fontweight: FontWeight.w600,
                      color: AppColors.blue,
                      fontsize: 12.h,
                    ),
                    SizedBox(height: 2.w),
                  ],
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0.w,
          bottom: 35.h,
          child: ImageWidget(
            image: AppImages.challenges,
            width: 121.6.w,
            height: 68.h,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
