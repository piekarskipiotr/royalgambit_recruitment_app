import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/textStyles/text_styles.dart';
import 'package:royalgambit_recruitment_app/designSystem/themes/themes.dart';

class EventCardHeader extends StatelessWidget {
  const EventCardHeader({
    required this.label,
    required this.date,
    required this.eventChips,
    super.key,
  });

  final String label;
  final String date;
  final List<EventChips> eventChips;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 4,
          children: [
            Text(label, style: AppTextStyles.h10(fontWeight: FontWeight.w600)),
            Text(date, style: AppTextStyles.h10(fontWeight: FontWeight.w600)),
          ],
        ),
        Row(spacing: 4, children: eventChips.map(_eventChip).toList()),
      ],
    );
  }

  Widget _eventChip(EventChips eventChip) {
    return Container(
      padding: const EdgeInsets.only(left: 3, top: 2, right: 3, bottom: 2),
      decoration: BoxDecoration(
        color: eventChip.backgroundColor,
        borderRadius: const BorderRadius.all(Radius.circular(6)),
      ),
      child: Row(
        spacing: 2,
        children: [
          SvgPicture.asset(eventChip.icon),
          Text(
            eventChip.label,
            style: AppTextStyles.h11(fontWeight: FontWeight.w700, color: AppColors.white),
          ),
        ],
      ),
    );
  }
}
