import 'package:flutter/material.dart';

import '../models/prayer_time.dart';

class PrayerCard extends StatelessWidget {
  final PrayerTime item;

  const PrayerCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: item.isNext ? const Color(0xFF113C2B) : Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item.name,
            style: TextStyle(
              color: item.isNext ? Colors.white : Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            item.time,
            style: TextStyle(
              color: item.isNext ? Colors.white : Colors.black87,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
