import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'now_icon_button.dart';

class LiveMatchButtonsSection extends StatelessWidget {
  const LiveMatchButtonsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12.w,
      children: [
        NowIconButton(
          icon: "assets/icons/notification.svg",
          callback: () {},
        ),
        NowIconButton(
          icon: "assets/icons/share.svg",
          callback: () {},
        ),
      ],
    );
  }
}