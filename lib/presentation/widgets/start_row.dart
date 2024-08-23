import 'package:fitness/presentation/widgets/image_widget.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartRow extends StatelessWidget {
  const StartRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageWidget(
          image: AppIcons.play,
          width: 19.w,
          height: 19.h,
        ),
        SizedBox(width: 10.w),
        TextWidget(
          text: 'Start',
          fontweight: FontWeight.w600,
          fontsize: 12.h,
          color: AppColors.blue,
        )
      ],
    );
  }
}
