import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'live_match_stack_gradient.dart';
import 'live_match_stack_timer.dart';

class LiveMatchTopSection extends StatelessWidget {
  const LiveMatchTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 390.w,
      height: 222.h,
      child: Stack(
        children: [
          Image.asset(
            "assets/images/pic1.jpg",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          LiveMatchStackGradient(),
          LiveMatchStackTimer(),
          Positioned(
            top: 8,
            left: 10,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/back-arrow.svg",
                width: 24.r,
                height: 24.r,
              ),
            ),
          ),
        ],
      ),
    );
  }
}