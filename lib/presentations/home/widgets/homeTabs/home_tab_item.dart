import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/l10n/l10n.dart';

class HomeTabItem extends StatelessWidget {
  const HomeTabItem({
    required this.tab,
    required this.isSelected,
    super.key,
  });

  final HomeTabs tab;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      height: 45,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.white : null,
        border: isSelected
            ? const Border(
                left: BorderSide(color: AppColors.borderColor),
                right: BorderSide(color: AppColors.borderColor),
                top: BorderSide(color: AppColors.borderColor),
              )
            : const Border.symmetric(horizontal: BorderSide(color: AppColors.borderColor)),
      ),
      child: Row(
        spacing: 5,
        children: [
          Text(tab.getLabel(l10n), style: AppTextStyles.h9(fontWeight: FontWeight.w700)),
          if (tab == HomeTabs.live)
            Container(
              width: 6,
              height: 6,
              decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(3)),
            ),
        ],
      ),
    );
  }
}
