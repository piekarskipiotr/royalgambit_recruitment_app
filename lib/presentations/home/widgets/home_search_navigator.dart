import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/l10n/l10n.dart';
import 'package:royalgambit_recruitment_app/resources/resources.dart';

class HomeSearchNavigator extends StatelessWidget {
  const HomeSearchNavigator({required this.onSearchPressed, super.key});

  final VoidCallback onSearchPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: onSearchPressed,
        child: Container(
          height: 37,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColors.white,
            border: Border.all(color: AppColors.borderColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            spacing: 10,
            children: [
              SvgPicture.asset(AppIcons.search),
              Text(
                l10n.searchLabel,
                style: AppTextStyles.h9(color: AppColors.subtextColor, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
