import 'package:flutter/material.dart';

import '../data/sample_data.dart';
import '../widgets/dhikr_card.dart';

class AdhkarScreen extends StatelessWidget {
  const AdhkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'الأذكار',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 14),
            TextField(
              decoration: InputDecoration(
                hintText: 'ابحث عن ذكر...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: ListView.builder(
                itemCount: sampleDhikr.length,
                itemBuilder: (context, index) {
                  final item = sampleDhikr[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: DhikrCard(item: item, onTap: () {}),
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
