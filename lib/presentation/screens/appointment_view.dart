import 'package:fitness/presentation/widgets/assessment_card.dart';
import 'package:fitness/presentation/widgets/bounce_effect.dart';
import 'package:fitness/presentation/widgets/image_widget.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(11.w),
          decoration: BoxDecoration(
            color: AppColors.featherGrey,
            borderRadius: BorderRadius.circular(21.r),
          ),
          child: GridView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.babyBlue,
                  borderRadius: BorderRadius.circular(11.r),
                ),
                width: 147.w,
                height: 113.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageWidget(image: AppImages.appointment1),
                    TextWidget(
                      fontsize: 12.h,
                      textAlign: TextAlign.center,
                      width: 87.w,
                      text: 'Cancer 2nd Opinion',
                      maxlines: 2,
                      color: AppColors.navyBlue,
                      fontweight: FontWeight.w600,
                    )
                  ],
                ),
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10.w,
              crossAxisSpacing: 10.h,
              childAspectRatio: 147.w / 113.h,
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 100.w,
          child: BounceEffect(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.r),
                color: AppColors.navyBlue,
              ),
              height: 22.h,
              width: 90.w,
              child: Center(
                child: TextWidget(
                  text: 'View all',
                  fontweight: FontWeight.w500,
                  fontsize: 10.h,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
