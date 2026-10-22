import 'package:flutter/material.dart';

class QiblaScreen extends StatelessWidget {
  const QiblaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'اتجاه القبلة',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 28),
            Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Center(
                child: Transform.rotate(
                  angle: 1.5,
                  child: const Icon(
                    Icons.navigation,
                    size: 100,
                    color: Color(0xFF113C2B),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 28),
            const Text(
              'الزاوية الحالية: 45° شرقًا',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            const Text(
              'الاستشعار قد يتأثر بالمعادن أو البوصلة',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
