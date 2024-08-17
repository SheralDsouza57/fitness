import 'package:fitness/presentation/widgets/assessment_card.dart';
import 'package:fitness/presentation/screens/assessment_view.dart';
import 'package:fitness/presentation/widgets/bounce_effect.dart';
import 'package:fitness/presentation/widgets/custom_tab.dart';
import 'package:fitness/presentation/widgets/text_widget.dart';
import 'package:fitness/resources/app_colors.dart';
import 'package:fitness/resources/app_icons.dart';
import 'package:fitness/resources/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: TextWidget(
                  text: 'Hello Jane',
                  fontweight: FontWeight.w600,
                  color: AppColors.blue,
                  fontsize: 24.h,
                ),
              ),
              BounceEffect(
                onTap: () {},
                child: Image.asset(AppIcons.account),
              )
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6.h),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23.5.r),
                  color: AppColors.featherGrey,
                ),
                child: TabBar(
                  labelPadding: EdgeInsets.zero,
                  controller: _tabController,
                  indicator: const BoxDecoration(),
                  dividerHeight: 0,
                  tabs: [
                    CustomTab(
                      text: 'My Assessments',
                      isSelected: _tabController?.index == 0,
                    ),
                    CustomTab(
                      text: 'My Appointments',
                      isSelected: _tabController?.index == 1,
                    )
                  ],
                  onTap: (index) {
                    setState(() {});
                  },
                ),
              ),
              SizedBox(height: 12.h),
              SizedBox(
                //TabView Box
                width: double.infinity,
                height: 258.h,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    AssessmentView(),
                    Center(
                      child: Text('Content for Tab 2'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: 'Challenges',
                    fontsize: 14.h,
                    fontweight: FontWeight.w500,
                    color: AppColors.darkCharcoal,
                  ),
                  Row(
                    children: [
                      TextWidget(
                        text: 'View All',
                        fontsize: 12.h,
                        fontweight: FontWeight.w500,
                        color: AppColors.darkCharcoal,
                        underline: TextDecoration.underline,
                      ),
                      SizedBox(width: 10.w),
                      Image.asset(
                        AppIcons.forwardArrow,
                        height: 22.h,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
