import 'package:flutter/material.dart';

import 'appcolors.dart';
import 'itemsouraname.dart';

class Quraantap extends StatelessWidget {
  const Quraantap({super.key});

  static const List<String> names = [
    'الفاتحة', 'البقرة', 'آل عمران', 'النساء', 'المائدة', 'الأنعام', 'الأعراف',
    'الأنفال', 'التوبة', 'يونس', 'هود', 'يوسف', 'الرعد', 'إبراهيم', 'الحجر',
    'النحل', 'الإسراء', 'الكهف', 'مريم', 'طه', 'الأنبياء', 'الحج', 'المؤمنون',
    'النور', 'الفرقان', 'الشعراء', 'النمل', 'القصص', 'العنكبوت', 'الروم',
    'لقمان', 'السجدة', 'الأحزاب', 'سبأ', 'فاطر', 'يس', 'الصافات', 'ص', 'الزمر',
    'غافر', 'فصلت', 'الشورى', 'الزخرف', 'الدخان', 'الجاثية', 'الأحقاف',
    'محمد', 'الفتح', 'الحجرات', 'ق', 'الذاريات', 'الطور', 'النجم', 'القمر',
    'الرحمن', 'الواقعة', 'الحديد', 'المجادلة', 'الحشر', 'الممتحنة', 'الصف',
    'الجمعة', 'المنافقون', 'التغابن', 'الطلاق', 'التحريم', 'الملك', 'القلم',
    'الحاقة', 'المعارج', 'نوح', 'الجن', 'المزمل', 'المدثر', 'القيامة',
    'الإنسان', 'المرسلات', 'النبأ', 'النازعات', 'عبس', 'التكوير', 'الانفطار',
    'المطففين', 'الانشقاق', 'البروج', 'الطارق', 'الأعلى', 'الغاشية', 'الفجر',
    'البلد', 'الشمس', 'الليل', 'الضحى', 'الشرح', 'التين', 'العلق', 'القدر',
    'البينة', 'الزلزلة', 'العاديات', 'القارعة', 'التكاثر', 'العصر', 'الهمزة',
    'الفيل', 'قريش', 'الماعون', 'الكوثر', 'الكافرون', 'النصر', 'المسد',
    'الإخلاص', 'الفلق', 'الناس',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(color: Appcolors.primarycolor, thickness: 3, height: 3),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'اسم السورة',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        const Divider(color: Appcolors.primarycolor, thickness: 3, height: 3),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 4),
            itemCount: names.length,
            separatorBuilder: (_, __) => const Divider(
              color: Appcolors.primarycolor,
              thickness: 1,
              height: 1,
            ),
            itemBuilder: (context, index) => Itemsouraname(
              name: names[index],
              index: index,
            ),
          ),
        ),
      ],
    );
  }
}
