import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/presentations/home/widgets/widgets.dart';

class HomeWebView extends StatelessWidget {
  const HomeWebView({required this.onSearchPressed, super.key});

  final VoidCallback onSearchPressed;

  @override
  Widget build(BuildContext context) {
    return AppWebScaffold(
      leftChild: Column(
        spacing: 16,
        children: [
          const HomeHeader(),
          const HomeDivider(),
          HomeSearchNavigator(onSearchPressed: onSearchPressed),
          const HomeTabsList(selectedTab: HomeTabs.my),
        ],
      ),
      rightChild: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 48),
        child: Column(
          children: [
            const HomeCategoryFiltersList(selectedCategoryType: CategoryType.oldWspolczynnik),
            ...CategoryType.values.skip(1).map((category) => HomeCategorySection(category: category)),
          ],
        ),
      ),
    );
  }
}
