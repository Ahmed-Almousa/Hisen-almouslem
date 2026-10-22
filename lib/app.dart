import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/adhkar_screen.dart';
import 'screens/prayer_times_screen.dart';
import 'screens/qibla_screen.dart';
import 'screens/more_screen.dart';

class HisnApp extends StatefulWidget {
  const HisnApp({super.key});

  @override
  State<HisnApp> createState() => _HisnAppState();
}

class _HisnAppState extends State<HisnApp> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    AdhkarScreen(),
    PrayerTimesScreen(),
    QiblaScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'حصن المسلم',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF113C2B),
        scaffoldBackgroundColor: const Color(0xFFF6F3EE),
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(Icons.home),
              label: 'الرئيسية',
            ),
            NavigationDestination(
              icon: Icon(Icons.book_outlined),
              selectedIcon: Icon(Icons.book),
              label: 'الأذكار',
            ),
            NavigationDestination(
              icon: Icon(Icons.access_time_outlined),
              selectedIcon: Icon(Icons.access_time),
              label: 'الصلاة',
            ),
            NavigationDestination(
              icon: Icon(Icons.explore_outlined),
              selectedIcon: Icon(Icons.explore),
              label: 'القبلة',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_horiz_outlined),
              selectedIcon: Icon(Icons.more_horiz),
              label: 'المزيد',
            ),
          ],
        ),
      ),
    );
  }
}
