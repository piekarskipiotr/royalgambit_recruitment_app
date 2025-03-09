import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/l10n/l10n.dart';
import 'package:royalgambit_recruitment_app/resources/resources.dart';

class SearchTextFormField extends StatelessWidget {
  const SearchTextFormField({
    required this.textController,
    required this.onPhraseChanged,
    required this.onPrefixIconPressed,
    required this.onSuffixIconPressed,
    super.key,
  });

  final TextEditingController textController;
  final void Function(String) onPhraseChanged;
  final VoidCallback onPrefixIconPressed;
  final VoidCallback onSuffixIconPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return AppTextFormField(
      label: l10n.searchLabel,
      onChange: onPhraseChanged,
      prefixIcon: AppIcons.arrowLeft,
      onPrefixIconPressed: onPrefixIconPressed,
      suffixWidget: AppIcons.cancel,
      onSuffixIconPressed: onSuffixIconPressed,
      textController: textController,
      requestFocusOnInitialize: true,
    );
  }
}
