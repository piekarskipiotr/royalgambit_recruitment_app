import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/presentations/home/widgets/homeTabs/home_tab_item.dart';
import 'package:royalgambit_recruitment_app/resources/resources.dart';

class HomeTabsList extends StatelessWidget {
  const HomeTabsList({required this.selectedTab, super.key});

  final HomeTabs selectedTab;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: HomeTabs.values.map((tab) {
                final isSelected = tab == selectedTab;
                return HomeTabItem(tab: tab, isSelected: isSelected);
              }).toList(),
            ),
          ),
        ),
        Container(
          height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: const BoxDecoration(
            color: AppColors.white,
            border: Border.symmetric(horizontal: BorderSide(color: AppColors.borderColor)),
          ),
          child: SvgPicture.asset(AppIcons.calendar),
        ),
      ],
    );
  }
}
