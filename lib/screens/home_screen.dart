import 'package:flutter/material.dart';

import '../data/sample_data.dart';
import '../widgets/app_header.dart';
import '../widgets/dhikr_card.dart';
import '../widgets/prayer_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const AppHeader(
              title: 'حصن المسلم',
              subtitle: 'مواقيت الصلاة • الأذكار • القِبلة',
            ),
            const SizedBox(height: 18),
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'الصلاة القادمة',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'الظهر',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'الوقت المتبقي: 02:15:30',
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            const Text(
              'أوقات الصلاة',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ...samplePrayerTimes.map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: PrayerCard(item: item),
                )),
            const SizedBox(height: 20),
            const Text(
              'أذكار مختارة',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            ...sampleDhikr.take(2).map((item) => Padding(
                  padding: const EdgeInsets.only(bottom: 14),
                  child: DhikrCard(
                    item: item,
                    onTap: () {},
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
