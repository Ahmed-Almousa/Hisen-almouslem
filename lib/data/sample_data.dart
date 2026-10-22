import '../models/adhkar_item.dart';
import '../models/prayer_time.dart';

final List<DhikrItem> sampleDhikr = [
  const DhikrItem(
    title: 'أذكار الصباح',
    arabicText: 'اللّهُ أَكْبَرُ',
    repeats: 1,
    isFavorite: true,
    category: 'صباح',
  ),
  const DhikrItem(
    title: 'أذكار المساء',
    arabicText: 'أَسْتَغْفِرُ اللَّهَ',
    repeats: 3,
    isFavorite: false,
    category: 'مساء',
  ),
  const DhikrItem(
    title: 'أذكار النوم',
    arabicText: 'بِاسْمِكَ رَبِّي وَضَعْتُ جَنْبِي',
    repeats: 1,
    isFavorite: true,
    category: 'نوم',
  ),
  const DhikrItem(
    title: 'أذكار بعد الصلاة',
    arabicText: 'سُبْحَانَ اللَّهِ',
    repeats: 33,
    isFavorite: false,
    category: 'صلاة',
  ),
];

final List<PrayerTime> samplePrayerTimes = [
  const PrayerTime(name: 'الفجر', time: '04:30', isNext: false),
  const PrayerTime(name: 'الشروق', time: '05:45', isNext: false),
  const PrayerTime(name: 'الظهر', time: '12:15', isNext: true),
  const PrayerTime(name: 'العصر', time: '15:30', isNext: false),
  const PrayerTime(name: 'المغرب', time: '18:23', isNext: false),
  const PrayerTime(name: 'العشاء', time: '19:50', isNext: false),
];
