import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:royalgambit_recruitment_app/designSystem/textStyles/text_styles.dart';
import 'package:royalgambit_recruitment_app/designSystem/themes/themes.dart';

class AppTextFormField extends StatefulWidget {
  const AppTextFormField({
    required this.label,
    required this.textController,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixWidget,
    this.onPrefixIconPressed,
    this.onSuffixIconPressed,
    this.onChange,
    this.requestFocusOnInitialize = false,
    super.key,
  });

  final TextEditingController textController;
  final String label;
  final int maxLines;
  final String? prefixIcon;
  final String? suffixWidget;
  final VoidCallback? onPrefixIconPressed;
  final VoidCallback? onSuffixIconPressed;
  final void Function(String)? onChange;
  final bool requestFocusOnInitialize;

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  var _hasFocus = false;
  var _focusNode = FocusNode();

  bool get isFocusLost => _hasFocus && !_focusNode.hasFocus;

  @override
  void initState() {
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChanged);

    if (widget.requestFocusOnInitialize) {
      _focusNode.requestFocus();
    }
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChanged() {
    setState(() {
      _hasFocus = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      autocorrect: false,
      focusNode: _focusNode,
      onChanged: (value) {
        widget.onChange?.call(value);
      },
      onTapOutside: (_) {
        _focusNode.unfocus();
      },
      maxLines: widget.maxLines,
      cursorColor: AppColors.black,
      style: AppTextStyles.h8(fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        hintText: widget.label,
        hintStyle: AppTextStyles.h8(fontWeight: FontWeight.w600, color: AppColors.subtextColor),
        prefixIconConstraints: const BoxConstraints(maxHeight: 48, minWidth: 40),
        suffixIconConstraints: const BoxConstraints(maxHeight: 48, minWidth: 48),
        prefixIcon: _textFormFixIcon(icon: widget.prefixIcon, onPressed: widget.onPrefixIconPressed),
        suffixIcon: _textFormFixIcon(icon: widget.suffixWidget, onPressed: widget.onSuffixIconPressed),
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
        border: _textFormFieldBorder(),
        fillColor: AppColors.white,
        filled: true,
        enabledBorder: _textFormFieldBorder(),
        focusedBorder: _textFormFieldBorder(),
        disabledBorder: _textFormFieldBorder(),
      ),
    );
  }

  static Widget? _textFormFixIcon({String? icon, VoidCallback? onPressed}) {
    if (icon == null) return null;

    return GestureDetector(
      onTap: onPressed,
      child: SvgPicture.asset(icon),
    );
  }

  static InputBorder _textFormFieldBorder({Color borderColor = AppColors.borderColor}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: borderColor),
      borderRadius: BorderRadius.circular(5),
    );
  }
}
