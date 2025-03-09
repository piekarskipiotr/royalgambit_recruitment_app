import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/themes/app_colors.dart';

class EventCardContainer extends StatelessWidget {
  const EventCardContainer({required this.children, super.key});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.borderColor),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        spacing: 10,
        children: children,
      ),
    );
  }
}
