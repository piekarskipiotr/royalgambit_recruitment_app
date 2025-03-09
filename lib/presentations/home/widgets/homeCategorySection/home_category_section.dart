import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/presentations/home/widgets/homeCategorySection/home_category_content.dart';
import 'package:royalgambit_recruitment_app/presentations/home/widgets/homeCategorySection/home_category_section_header.dart';

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({required this.category, super.key});

  final CategoryType category;

  @override
  Widget build(BuildContext context) {
    return HomeCategorySectionHeader(
      category: category,
      child: const HomeCategoryContent(),
    );
  }
}
