import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';

class AppWebScaffold extends StatelessWidget {
  const AppWebScaffold({required this.leftChild, required this.rightChild, super.key});

  final Widget leftChild;
  final Widget rightChild;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(width: 300, child: leftChild),
          Expanded(
            child: Container(
              color: Colors.white,
              height: double.infinity,
              child: rightChild,
            ),
          ),
        ],
      ),
    );
  }
}
