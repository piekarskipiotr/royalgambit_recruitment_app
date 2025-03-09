import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/presentations/home/widgets/homeCategorySection/home_category_content_details.dart';

class HomeCategoryContent extends StatefulWidget {
  const HomeCategoryContent({super.key});

  @override
  State<HomeCategoryContent> createState() => _HomeCategoryContentState();
}

class _HomeCategoryContentState extends State<HomeCategoryContent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Builder(
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TabBar(
                indicatorColor: AppColors.borderColor,
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: AppColors.borderColor,
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                labelColor: AppColors.black,
                labelStyle: AppTextStyles.h9(fontWeight: FontWeight.w500),
                onTap: (_) {
                  setState(() {});
                },
                tabs: const [
                  Tab(text: 'Some tab name 1'),
                  Tab(text: 'Some tab name 2'),
                  Tab(text: 'Some tab name 3'),
                  Tab(text: 'Some tab name 4'),
                  Tab(text: 'Some tab name 5'),
                  Tab(text: 'Some tab name 6'),
                ],
              ),
              // For simplicity sake
              switch (DefaultTabController.of(context).index) {
                0 => const HomeCategoryContentDetails(itemCount: 1),
                1 => const HomeCategoryContentDetails(itemCount: 2),
                2 => const HomeCategoryContentDetails(itemCount: 4),
                3 => const HomeCategoryContentDetails(itemCount: 5),
                4 => const HomeCategoryContentDetails(itemCount: 2),
                5 => const HomeCategoryContentDetails(itemCount: 5),
                6 => const HomeCategoryContentDetails(itemCount: 8),
                _ => const SizedBox(),
              },
            ],
          );
        },
      ),
    );
  }
}
