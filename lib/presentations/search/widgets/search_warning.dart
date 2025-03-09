import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/l10n/l10n.dart';
import 'package:royalgambit_recruitment_app/resources/resources.dart';

class SearchWarning extends StatelessWidget {
  const SearchWarning({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 64),
      child: Column(
        children: [
          SvgPicture.asset(AppIcons.warning),
          const SizedBox(height: 24),
          Text(
            l10n.searchWarningTitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.h6(fontWeight: FontWeight.w700),
          ),
          Text(
            l10n.searchWarningSubtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.h9(fontWeight: FontWeight.w600, color: AppColors.subtextColor),
          ),
        ],
      ),
    );
  }
}
