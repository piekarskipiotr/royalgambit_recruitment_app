import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/textStyles/app_text_styles.dart';
import 'package:royalgambit_recruitment_app/designSystem/themes/themes.dart';

class EventCardDetails extends StatelessWidget {
  const EventCardDetails({
    required this.teamA,
    required this.teamB,
    super.key,
  });

  final String teamA;
  final String teamB;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(teamA, style: AppTextStyles.h9(fontWeight: FontWeight.w600)),
            Text(teamB, style: AppTextStyles.h9(fontWeight: FontWeight.w600)),
          ],
        ),
        Row(spacing: 6, children: List.filled(3, _betCard())),
      ],
    );
  }

  Widget _betCard() {
    return Container(
      height: 45,
      width: 49,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
      decoration: BoxDecoration(
        color: AppColors.white,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
      child: Column(
        spacing: 2,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('1', style: AppTextStyles.h11(fontWeight: FontWeight.w400)),
          Text('1.25', style: AppTextStyles.h8(fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}
