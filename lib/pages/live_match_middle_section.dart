import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/live_match_buttons_section.dart';
import '../widgets/live_match_titles_section.dart';

class LiveMatchMiddleSection extends StatelessWidget {
  const LiveMatchMiddleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        spacing: 16.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LiveMatchTitlesSection(),
          LiveMatchButtonsSection(),
        ],
      ),
    );
  }
}