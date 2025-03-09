import 'package:flutter/material.dart';
import 'package:royalgambit_recruitment_app/data/data.dart';
import 'package:royalgambit_recruitment_app/designSystem/eventCards/eventCard/event_card_container.dart';
import 'package:royalgambit_recruitment_app/designSystem/eventCards/eventCard/event_card_details.dart';
import 'package:royalgambit_recruitment_app/designSystem/eventCards/eventCard/event_card_header.dart';
import 'package:royalgambit_recruitment_app/designSystem/eventCards/eventCard/event_card_timeline.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const EventCardContainer(
      children: [
        EventCardHeader(label: 'LIGA MISTRZÓW', date: '19.07', eventChips: EventChips.values),
        EventCardTimeline(time: '18.00', extraTime: '36'),
        EventCardDetails(teamA: 'Liverpool', teamB: 'Real Madryt'),
      ],
    );
  }
}
