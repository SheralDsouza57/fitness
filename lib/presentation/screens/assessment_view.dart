import 'package:fitness/presentation/screens/detail.dart';
import 'package:fitness/presentation/widgets/assessment_card.dart';
import 'package:fitness/presentation/widgets/bounce_effect.dart';
import 'package:fitness/presentation/widgets/start_row.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AssessmentView extends StatelessWidget {
  const AssessmentView({
    super.key,
  });

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
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 2,
            itemBuilder: (context, index) {
              return AssessmentCard(
                play: BounceEffect(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Detail()),
                      );
                    },
                    child: const StartRow()),
              );
            },
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
