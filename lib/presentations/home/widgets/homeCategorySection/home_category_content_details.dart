import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';

class HomeCategoryContentDetails extends StatefulWidget {
  const HomeCategoryContentDetails({required this.itemCount, super.key});

  final int itemCount;

  @override
  State<HomeCategoryContentDetails> createState() => _HomeCategoryContentDetailsState();
}

class _HomeCategoryContentDetailsState extends State<HomeCategoryContentDetails> with TickerProviderStateMixin {
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

    _toggleExpansion();
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: _toggleExpansion,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 4,
                  children: [
                    Text('ATP', style: AppTextStyles.h10(fontWeight: FontWeight.w700)),
                    const Icon(Icons.arrow_forward_ios, size: 8),
                    Text('MIAMI ATP', style: AppTextStyles.h10(fontWeight: FontWeight.w700)),
                  ],
                ),
                AnimatedRotation(
                  turns: _isExpanded ? -0.25 : 0.25,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  child: const Icon(Icons.arrow_back_ios_new, size: 14),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: SizeTransition(
            sizeFactor: _heightAnimation,
            axisAlignment: -1,
            child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.fromLTRB(16, 2, 16, 8),
              itemCount: widget.itemCount,
              itemBuilder: (context, index) {
                return const EventCard();
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 8);
              },
            ),
          ),
        ),
      ],
    );
  }
}
