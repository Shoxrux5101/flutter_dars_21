import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';

class LiveMatchBottomButton extends StatelessWidget {
  const LiveMatchBottomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: AppColors.reallyBlue,
          foregroundColor: AppColors.almostWhite,
          fixedSize: Size(336.w, 40.h),
        ),
        child: Text("Buy Streaming Access"),
      ),
    );
  }
}