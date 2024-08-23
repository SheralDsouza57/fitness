import 'package:fitness/presentation/widgets/image_widget.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetailIcons extends StatelessWidget {
  const DetailIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Column(
        children: [
          ImageWidget(
            image: AppIcons.detailIcon,
            width: 55.w,
            height: 55.w,
          ),
          SizedBox(height: 6.h),
          TextWidget(
            textAlign: TextAlign.center,
            maxlines: 2,
            width: 53.w,
            text: 'Key Body Vitals',
            fontweight: FontWeight.w600,
            color: AppColors.darkCharcoal,
            fontsize: 8.h,
          ),
        ],
      ),
    );
  }
}
