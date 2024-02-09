import 'package:flutter/material.dart';
import 'package:home_rent/app/theme/colors.dart';
import 'package:home_rent/app/theme/fonts.dart';

class CustomTextChip extends StatelessWidget {
  final String text;
  final bool isActive;
  const CustomTextChip({
    super.key,
    required this.text,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: const EdgeInsets.only(right: 10),
      decoration: isActive
          ? BoxDecoration(
              gradient: linearGradient,
              borderRadius: BorderRadius.circular(10),
              boxShadow: customShadow,
            )
          : BoxDecoration(
              color: lightGreyColor,
              borderRadius: BorderRadius.circular(10),
            ),
      child: Center(
        child: Text(
          text,
          style: ralewayMedium.copyWith(
              fontSize: 12, color: isActive ? whiteColor : greyColor),
        ),
      ),
    );
  }
}
