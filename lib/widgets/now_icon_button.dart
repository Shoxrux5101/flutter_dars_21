import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../utils/colors.dart';

class NowIconButton extends StatelessWidget {
  const NowIconButton({
    super.key,
    required this.icon,
    required this.callback,
  });

  final void Function() callback;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: callback,
      style: IconButton.styleFrom(
        backgroundColor: AppColors.iconButtonBg,
      ),
      icon: SvgPicture.asset(icon),
    );
  }
}