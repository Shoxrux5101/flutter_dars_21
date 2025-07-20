import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';
import '../utils/styles.dart';

final text =
    "Leeds were so impressive on their return to the top flight last term, picking up 59 points from 38 matches to claim ninth, just two points behind eighth-place Arsenal and three points behind seventh-place Tottenham Hotspur, and they also ended the campaign in excellent form.";

class LiveMatchBottomSection extends StatefulWidget {
  const LiveMatchBottomSection({
    super.key,
  });

  @override
  State<LiveMatchBottomSection> createState() => _LiveMatchBottomSectionState();
}

class _LiveMatchBottomSectionState extends State<LiveMatchBottomSection>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  bool readMore = false;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 28.h,
          child: TabBar(
            controller: controller,
            indicatorColor: AppColors.almostWhite,
            dividerHeight: 0.4,
            tabs: [
              Text("Description", style: AppStyles.tabBar),
              Text("Match schedule", style: AppStyles.tabBar),
            ],
          ),
        ),
        SizedBox(
          height: 400,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: TabBarView(
              controller: controller,
              children: [
                RichText(
                  text: TextSpan(
                    style: AppStyles.subtitle,
                    text: text.substring(0, readMore ? text.length - 1 : 80),
                    children: [
                      TextSpan(
                        text: readMore ? " Read less" : " Read more",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () => setState(() {
                            readMore = !readMore;
                          }),
                        style: TextStyle(
                          color: Color(0xFF5C5C5C),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  text,
                  style: AppStyles.subtitle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}