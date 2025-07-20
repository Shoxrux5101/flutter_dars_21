import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';
import '../widgets/live_match_bottom_section.dart';
import '../widgets/live_match_top_section.dart';
import 'live_match_bottom_button.dart';
import 'live_match_middle_section.dart';

class LiveMatchDetailPage extends StatelessWidget {
  const LiveMatchDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.mainBgBegin, AppColors.mainBgEnd],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            spacing: 7.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LiveMatchTopSection(),
              LiveMatchMiddleSection(),
              LiveMatchBottomSection(),
              LiveMatchBottomButton(),
            ],
          ),
        ),
      ),
    );
  }
}