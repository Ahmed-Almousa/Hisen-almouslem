import 'package:flutter/material.dart';

import '../data/sample_data.dart';
import '../widgets/prayer_card.dart';

class PrayerTimesScreen extends StatelessWidget {
  const PrayerTimesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'مواقيت الصلاة',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 18),
            const Text('المدينة: الرياض'),
            const SizedBox(height: 18),
            Expanded(
              child: ListView.builder(
                itemCount: samplePrayerTimes.length,
                itemBuilder: (context, index) {
                  final item = samplePrayerTimes[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: PrayerCard(item: item),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
