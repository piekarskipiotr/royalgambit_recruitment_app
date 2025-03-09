import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';
import 'package:royalgambit_recruitment_app/l10n/l10n.dart';
import 'package:royalgambit_recruitment_app/presentations/home/widgets/home_divider.dart';

class HomeCategorySectionHeader extends StatefulWidget {
  const HomeCategorySectionHeader({required this.category, required this.child, super.key});

  final CategoryType category;
  final Widget child;

  @override
  State<HomeCategorySectionHeader> createState() => _HomeCategorySectionHeaderState();
}

class _HomeCategorySectionHeaderState extends State<HomeCategorySectionHeader> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _heightAnimation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    _heightAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  void _toggleExpansion() {
    setState(() {
      _isExpanded ? _controller.reverse() : _controller.forward();
      _isExpanded = !_isExpanded;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return ColoredBox(
      color: AppColors.white,
      child: Column(
        children: [
          const HomeDivider(),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: _toggleExpansion,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 8,
                    children: [
                      Text(widget.category.getLabel(l10n), style: AppTextStyles.h8(fontWeight: FontWeight.w700)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: AppColors.borderColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Text('123', style: AppTextStyles.h9(fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      border: Border.all(color: AppColors.borderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: AnimatedRotation(
                      turns: _isExpanded ? -0.25 : 0.25,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      child: const Icon(Icons.arrow_back_ios_new, size: 16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizeTransition(sizeFactor: _heightAnimation, axisAlignment: -1, child: widget.child),
        ],
      ),
    );
  }
}
