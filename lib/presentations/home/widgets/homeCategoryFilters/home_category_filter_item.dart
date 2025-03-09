import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/l10n/l10n.dart';

class HomeCategoryFilterItem extends StatelessWidget {
  const HomeCategoryFilterItem({
    required this.category,
    required this.isSelected,
    super.key,
  });

  final CategoryType category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.borderColor : null,
        border: Border.all(color: AppColors.borderColor),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        spacing: 5,
        children: [
          Text(category.getLabel(l10n), style: AppTextStyles.h9(fontWeight: FontWeight.w700)),
          Text('123', style: AppTextStyles.h9(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
