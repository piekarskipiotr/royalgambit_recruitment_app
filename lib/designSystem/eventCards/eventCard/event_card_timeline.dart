import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/textStyles/app_text_styles.dart';
import 'package:royalgambit_recruitment_app/designSystem/themes/themes.dart';

class EventCardTimeline extends StatelessWidget {
  const EventCardTimeline({required this.time, required this.extraTime, super.key});

  final String time;
  final String extraTime;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(time, style: AppTextStyles.h10(fontWeight: FontWeight.w600)),
        Expanded(child: Container(height: 1, color: AppColors.borderColor)),
        Text('+ $extraTime', style: AppTextStyles.h10(fontWeight: FontWeight.w700, color: AppColors.accentColor)),
      ],
    );
  }
}
