import 'package:flutter/material.dart';
import '../utils/styles.dart';

class LiveMatchTitlesSection extends StatelessWidget {
  const LiveMatchTitlesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Sampdorio vs Inter Milan",
          style: AppStyles.title1,
        ),
        Text(
          "Tomorrow, 12 Sep  - 08.00 PM",
          style: AppStyles.subtitle,
        ),
        Text(
          "Seria A - Gameweek 12",
          style: AppStyles.subtitle,
        ),
      ],
    );
  }
}