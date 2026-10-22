import 'package:flutter/material.dart';

import '../widgets/settings_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('الإعدادات')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const [
            SettingsTile(
              title: 'اللغة',
              trailing: 'العربية',
              icon: Icons.language,
            ),
            SizedBox(height: 12),
            SettingsTile(
              title: 'الوضع الليلي',
              trailing: 'تلقائي',
              icon: Icons.dark_mode_outlined,
            ),
            SizedBox(height: 12),
            SettingsTile(
              title: 'حجم الخط',
              trailing: 'متوسط',
              icon: Icons.text_fields_outlined,
            ),
            SizedBox(height: 12),
            SettingsTile(
              title: 'الإشعارات',
              trailing: 'مفعلة',
              icon: Icons.notifications_none,
            ),
          ],
        ),
      ),
    );
  }
}
