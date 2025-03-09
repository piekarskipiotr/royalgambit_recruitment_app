import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/presentations/home/bloc/home_bloc.dart';
import 'package:royalgambit_recruitment_app/presentations/home/widgets/widgets.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({required this.onSearchPressed, super.key});

  final VoidCallback onSearchPressed;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      useLayoutPadding: false,
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Column(
            spacing: 16,
            children: [
              const HomeHeader(),
              const HomeDivider(),
              HomeSearchNavigator(onSearchPressed: onSearchPressed),
              Expanded(
                child: Column(
                  children: [
                    const HomeTabsList(selectedTab: HomeTabs.my),
                    Expanded(
                      child: ColoredBox(
                        color: AppColors.white,
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.only(bottom: 48),
                          child: Column(
                            children: [
                              const HomeCategoryFiltersList(selectedCategoryType: CategoryType.oldWspolczynnik),
                              ...CategoryType.values.skip(1).map((category) => HomeCategorySection(category: category)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
