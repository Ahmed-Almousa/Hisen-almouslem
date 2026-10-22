import 'package:flutter/material.dart';

import '../widgets/settings_tile.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'المزيد',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18),
            SettingsTile(
              title: 'المفضلة',
              trailing: '12',
              icon: Icons.favorite_border,
            ),
            SizedBox(height: 10),
            SettingsTile(
              title: 'السجل',
              trailing: 'أسبوعي',
              icon: Icons.history,
            ),
            SizedBox(height: 10),
            SettingsTile(
              title: 'التاريخ الهجري',
              trailing: '1447',
              icon: Icons.calendar_month,
            ),
            SizedBox(height: 10),
            SettingsTile(
              title: 'تنبيهات الصلاة',
              trailing: 'مفعل',
              icon: Icons.notifications_active_outlined,
            ),
            SizedBox(height: 10),
            SettingsTile(
              title: 'الإعدادات',
              trailing: 'تعديل',
              icon: Icons.settings_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
