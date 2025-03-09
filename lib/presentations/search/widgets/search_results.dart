import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/designSystem/design_system.dart';

class SearchResults extends StatelessWidget {
  const SearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      padding: const EdgeInsets.only(top: 16, bottom: 48),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const EventCard();
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
    );
  }
}
