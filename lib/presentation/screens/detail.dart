import 'package:fitness/presentation/widgets/detail_icons.dart';
import 'package:fitness/presentation/widgets/image_widget.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_icons.dart';
import 'package:fitness/resources/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Detail extends StatelessWidget {
  const Detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height.h,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: ImageWidget(
                  image: AppImages.assessment2Enlarged,
                  width: 375.w,
                  height: 322.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 60.h,
                left: 30.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.arrow_back),
                    SizedBox(height: 40.h),
                    TextWidget(
                      width: 180.w,
                      maxlines: 2,
                      text: 'Health Risk Assessment',
                      fontsize: 20.h,
                      color: AppColors.navyBlue,
                      fontweight: FontWeight.w600,
                    ),
                    SizedBox(height: 13.h),
                    Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      width: 62.w,
                      height: 20.h,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageWidget(image: AppIcons.timer),
                          TextWidget(text: ' 4 min')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 260.h,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 27.w, vertical: 24.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: AppColors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'What do you get?',
                        fontweight: FontWeight.w600,
                        color: AppColors.navyBlue,
                        fontsize: 14.h,
                      ),
                      SizedBox(height: 11.h),
                      SizedBox(
                        height: 130.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return const DetailIcons();
                          },
                        ),
                      ),
                      TextWidget(
                        text: 'How we do it?',
                        fontweight: FontWeight.w600,
                        color: AppColors.navyBlue,
                        fontsize: 14.h,
                      ),
                      SizedBox(height: 11.h),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                              top: -80.h,
                              left: 100.w,
                              child: ImageWidget(image: AppImages.ring1)),
                          Container(
                            height: 200.h,
                            decoration: BoxDecoration(
                              color: AppColors.offWhite,
                              borderRadius: BorderRadius.circular(15.r),
                              border: Border.all(color: AppColors.lightGrey),
                            ),
                          ),
                          Positioned(
                            top: -30.h,
                            left: 20.w,
                            child: ImageWidget(
                              image: AppImages.man,
                              width: 232.w,
                              height: 145.6.h,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
