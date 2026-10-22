import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final String trailing;
  final IconData icon;

  const SettingsTile({
    super.key,
    required this.title,
    required this.trailing,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      trailing: Text(trailing),
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    );
  }
}
