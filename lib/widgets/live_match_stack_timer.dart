
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveMatchStackTimer extends StatelessWidget {
  const LiveMatchStackTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(12),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){},
            child: SizedBox(
              width: 176.w,
              height: 78.h,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 44, sigmaY: 44),
                child: Container(
                  width: 176.w,
                  height: 78.h,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    spacing: 6,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "This match will start in:",
                        style: TextStyle(
                          color: Color(0xFFEAEAEA),
                          fontSize: 14.r,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "22:19:32",
                        style: TextStyle(
                          color: Color(0xFFEAEAEA),
                          fontSize: 24.r,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}