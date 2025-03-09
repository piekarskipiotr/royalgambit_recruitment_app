import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/themes/themes.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.child,
    this.useLayoutPadding = true,
    super.key,
  });

  final Widget child;
  final bool useLayoutPadding;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(height: 120, color: AppColors.accentColor),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: useLayoutPadding ? const EdgeInsets.only(top: 24, left: 16, right: 16) : EdgeInsets.zero,
              decoration: const BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
