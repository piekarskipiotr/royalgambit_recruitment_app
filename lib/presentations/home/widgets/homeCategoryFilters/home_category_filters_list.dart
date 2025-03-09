import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/presentations/home/widgets/homeCategoryFilters/home_category_filter_item.dart';
import 'package:royalgambit_recruitment_app/resources/resources.dart';

class HomeCategoryFiltersList extends StatelessWidget {
  const HomeCategoryFiltersList({required this.selectedCategoryType, super.key});

  final CategoryType selectedCategoryType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: AppColors.white,
      child: Row(
        children: [
          const SizedBox(width: 16),
          SvgPicture.asset(AppIcons.filters),
          const SizedBox(width: 16),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.only(right: 16),
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                children: CategoryType.values.map((category) {
                  final isSelected = category == selectedCategoryType;
                  return HomeCategoryFilterItem(category: category, isSelected: isSelected);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
