import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/cache/cached_data.dart';
import 'package:islami/core/routes/app_routes_name.dart';
import 'package:islami/core/widgets/custom_text_form_field.dart';
import 'package:islami/modules/quran/widgets/custom_sura_item.dart';
import 'package:islami/modules/quran/widgets/most_recent_card.dart';

import '../../core/gen/assets.gen.dart';
import '../../models/sura_data_model.dart';

List<SuraDataModel> quranSura = [
  SuraDataModel(
    suraNameEn: "Al-Fatiha",
    suraNameAr: "الفاتحه",
    versesCount: 7,
    suraNumber: 1,
  ),
  SuraDataModel(
    suraNameEn: "Al-Baqarah",
    suraNameAr: "البقرة",
    versesCount: 286,
    suraNumber: 2,
  ),
  SuraDataModel(
    suraNameEn: "Aal-E-Imran",
    suraNameAr: "آل عمران",
    versesCount: 200,
    suraNumber: 3,
  ),
  SuraDataModel(
    suraNameEn: "An-Nisa'",
    suraNameAr: "النساء",
    versesCount: 176,
    suraNumber: 4,
  ),
  SuraDataModel(
    suraNameEn: "Al-Ma'idah",
    suraNameAr: "المائدة",
    versesCount: 120,
    suraNumber: 5,
  ),
  SuraDataModel(
    suraNameEn: "Al-An'am",
    suraNameAr: "الأنعام",
    versesCount: 165,
    suraNumber: 6,
  ),
  SuraDataModel(
    suraNameEn: "Al-A'raf",
    suraNameAr: "الأعراف",
    versesCount: 206,
    suraNumber: 7,
  ),
  SuraDataModel(
    suraNameEn: "Al-Anfal",
    suraNameAr: "الأنفال",
    versesCount: 75,
    suraNumber: 8,
  ),
  SuraDataModel(
    suraNameEn: "At-Tawbah",
    suraNameAr: "التوبة",
    versesCount: 129,
    suraNumber: 9,
  ),
  SuraDataModel(
    suraNameEn: "Yunus",
    suraNameAr: "يونس",
    versesCount: 109,
    suraNumber: 10,
  ),
  SuraDataModel(
    suraNameEn: "Hud",
    suraNameAr: "هود",
    versesCount: 123,
    suraNumber: 11,
  ),
  SuraDataModel(
    suraNameEn: "Yusuf",
    suraNameAr: "يوسف",
    versesCount: 111,
    suraNumber: 12,
  ),
  SuraDataModel(
    suraNameEn: "Ar-Ra'd",
    suraNameAr: "الرعد",
    versesCount: 43,
    suraNumber: 13,
  ),
  SuraDataModel(
    suraNameEn: "Ibrahim",
    suraNameAr: "إبراهيم",
    versesCount: 52,
    suraNumber: 14,
  ),
  SuraDataModel(
    suraNameEn: "Al-Hijr",
    suraNameAr: "الحجر",
    versesCount: 99,
    suraNumber: 15,
  ),
  SuraDataModel(
    suraNameEn: "An-Nahl",
    suraNameAr: "النحل",
    versesCount: 128,
    suraNumber: 16,
  ),
  SuraDataModel(
    suraNameEn: "Al-Isra",
    suraNameAr: "الإسراء",
    versesCount: 111,
    suraNumber: 17,
  ),
  SuraDataModel(
    suraNameEn: "Al-Kahf",
    suraNameAr: "الكهف",
    versesCount: 110,
    suraNumber: 18,
  ),
  SuraDataModel(
    suraNameEn: "Maryam",
    suraNameAr: "مريم",
    versesCount: 98,
    suraNumber: 19,
  ),
  SuraDataModel(
    suraNameEn: "Ta-Ha",
    suraNameAr: "طه",
    versesCount: 135,
    suraNumber: 20,
  ),
  SuraDataModel(
    suraNameEn: "Al-Anbiya",
    suraNameAr: "الأنبياء",
    versesCount: 112,
    suraNumber: 21,
  ),
  SuraDataModel(
    suraNameEn: "Al-Hajj",
    suraNameAr: "الحج",
    versesCount: 78,
    suraNumber: 22,
  ),
  SuraDataModel(
    suraNameEn: "Al-Mu'minun",
    suraNameAr: "المؤمنون",
    versesCount: 118,
    suraNumber: 23,
  ),
  SuraDataModel(
    suraNameEn: "An-Nur",
    suraNameAr: "النّور",
    versesCount: 64,
    suraNumber: 24,
  ),
  SuraDataModel(
    suraNameEn: "Al-Furqan",
    suraNameAr: "الفرقان",
    versesCount: 77,
    suraNumber: 25,
  ),
  SuraDataModel(
    suraNameEn: "Ash-Shu'ara",
    suraNameAr: "الشعراء",
    versesCount: 227,
    suraNumber: 26,
  ),
  SuraDataModel(
    suraNameEn: "An-Naml",
    suraNameAr: "النّمل",
    versesCount: 93,
    suraNumber: 27,
  ),
  SuraDataModel(
    suraNameEn: "Al-Qasas",
    suraNameAr: "القصص",
    versesCount: 88,
    suraNumber: 28,
  ),
  SuraDataModel(
    suraNameEn: "Al-Ankabut",
    suraNameAr: "العنكبوت",
    versesCount: 69,
    suraNumber: 29,
  ),
  SuraDataModel(
    suraNameEn: "Ar-Rum",
    suraNameAr: "الرّوم",
    versesCount: 60,
    suraNumber: 30,
  ),
  SuraDataModel(
    suraNameEn: "Luqman",
    suraNameAr: "لقمان",
    versesCount: 34,
    suraNumber: 31,
  ),
  SuraDataModel(
    suraNameEn: "As-Sajda",
    suraNameAr: "السجدة",
    versesCount: 30,
    suraNumber: 32,
  ),
  SuraDataModel(
    suraNameEn: "Al-Ahzab",
    suraNameAr: "الأحزاب",
    versesCount: 73,
    suraNumber: 33,
  ),
  SuraDataModel(
    suraNameEn: "Saba",
    suraNameAr: "سبأ",
    versesCount: 54,
    suraNumber: 34,
  ),
  SuraDataModel(
    suraNameEn: "Fatir",
    suraNameAr: "فاطر",
    versesCount: 45,
    suraNumber: 35,
  ),
  SuraDataModel(
    suraNameEn: "Ya-Sin",
    suraNameAr: "يس",
    versesCount: 83,
    suraNumber: 36,
  ),
  SuraDataModel(
    suraNameEn: "As-Saffat",
    suraNameAr: "الصافات",
    versesCount: 182,
    suraNumber: 37,
  ),
  SuraDataModel(
    suraNameEn: "Sad",
    suraNameAr: "ص",
    versesCount: 88,
    suraNumber: 38,
  ),
  SuraDataModel(
    suraNameEn: "Az-Zumar",
    suraNameAr: "الزمر",
    versesCount: 75,
    suraNumber: 39,
  ),
  SuraDataModel(
    suraNameEn: "Ghafir",
    suraNameAr: "غافر",
    versesCount: 85,
    suraNumber: 40,
  ),
  SuraDataModel(
    suraNameEn: "Fussilat",
    suraNameAr: "فصّلت",
    versesCount: 54,
    suraNumber: 41,
  ),
  SuraDataModel(
    suraNameEn: "Ash-Shura",
    suraNameAr: "الشورى",
    versesCount: 53,
    suraNumber: 42,
  ),
  SuraDataModel(
    suraNameEn: "Az-Zukhruf",
    suraNameAr: "الزخرف",
    versesCount: 89,
    suraNumber: 43,
  ),
  SuraDataModel(
    suraNameEn: "Ad-Dukhan",
    suraNameAr: "الدّخان",
    versesCount: 59,
    suraNumber: 44,
  ),
  SuraDataModel(
    suraNameEn: "Al-Jathiya",
    suraNameAr: "الجاثية",
    versesCount: 37,
    suraNumber: 45,
  ),
  SuraDataModel(
    suraNameEn: "Al-Ahqaf",
    suraNameAr: "الأحقاف",
    versesCount: 35,
    suraNumber: 46,
  ),
  SuraDataModel(
    suraNameEn: "Muhammad",
    suraNameAr: "محمد",
    versesCount: 38,
    suraNumber: 47,
  ),
  SuraDataModel(
    suraNameEn: "Al-Fath",
    suraNameAr: "الفتح",
    versesCount: 29,
    suraNumber: 48,
  ),
  SuraDataModel(
    suraNameEn: "Al-Hujurat",
    suraNameAr: "الحجرات",
    versesCount: 18,
    suraNumber: 49,
  ),
  SuraDataModel(
    suraNameEn: "Qaf",
    suraNameAr: "ق",
    versesCount: 45,
    suraNumber: 50,
  ),
  SuraDataModel(
    suraNameEn: "Adh-Dhariyat",
    suraNameAr: "الذاريات",
    versesCount: 60,
    suraNumber: 51,
  ),
  SuraDataModel(
    suraNameEn: "At-Tur",
    suraNameAr: "الطور",
    versesCount: 49,
    suraNumber: 52,
  ),
  SuraDataModel(
    suraNameEn: "An-Najm",
    suraNameAr: "النجم",
    versesCount: 62,
    suraNumber: 53,
  ),
  SuraDataModel(
    suraNameEn: "Al-Qamar",
    suraNameAr: "القمر",
    versesCount: 55,
    suraNumber: 54,
  ),
  SuraDataModel(
    suraNameEn: "Ar-Rahman",
    suraNameAr: "الرحمن",
    versesCount: 78,
    suraNumber: 55,
  ),
  SuraDataModel(
    suraNameEn: "Al-Waqi'a",
    suraNameAr: "الواقعة",
    versesCount: 96,
    suraNumber: 56,
  ),
  SuraDataModel(
    suraNameEn: "Al-Hadid",
    suraNameAr: "الحديد",
    versesCount: 29,
    suraNumber: 57,
  ),
  SuraDataModel(
    suraNameEn: "Al-Mujadila",
    suraNameAr: "المجادلة",
    versesCount: 22,
    suraNumber: 58,
  ),
  SuraDataModel(
    suraNameEn: "Al-Hashr",
    suraNameAr: "الحشر",
    versesCount: 24,
    suraNumber: 59,
  ),
  SuraDataModel(
    suraNameEn: "Al-Mumtahina",
    suraNameAr: "الممتحنة",
    versesCount: 13,
    suraNumber: 60,
  ),
  SuraDataModel(
    suraNameEn: "As-Saff",
    suraNameAr: "الصف",
    versesCount: 14,
    suraNumber: 61,
  ),
  SuraDataModel(
    suraNameEn: "Al-Jumu'a",
    suraNameAr: "الجمعة",
    versesCount: 11,
    suraNumber: 62,
  ),
  SuraDataModel(
    suraNameEn: "Al-Munafiqun",
    suraNameAr: "المنافقون",
    versesCount: 11,
    suraNumber: 63,
  ),
  SuraDataModel(
    suraNameEn: "At-Taghabun",
    suraNameAr: "التغابن",
    versesCount: 18,
    suraNumber: 64,
  ),
  SuraDataModel(
    suraNameEn: "At-Talaq",
    suraNameAr: "الطلاق",
    versesCount: 12,
    suraNumber: 65,
  ),
  SuraDataModel(
    suraNameEn: "At-Tahrim",
    suraNameAr: "التحريم",
    versesCount: 12,
    suraNumber: 66,
  ),
  SuraDataModel(
    suraNameEn: "Al-Mulk",
    suraNameAr: "الملك",
    versesCount: 30,
    suraNumber: 67,
  ),
  SuraDataModel(
    suraNameEn: "Al-Qalam",
    suraNameAr: "القلم",
    versesCount: 52,
    suraNumber: 68,
  ),
  SuraDataModel(
    suraNameEn: "Al-Haqqah",
    suraNameAr: "الحاقة",
    versesCount: 52,
    suraNumber: 69,
  ),
  SuraDataModel(
    suraNameEn: "Al-Ma'arij",
    suraNameAr: "المعارج",
    versesCount: 44,
    suraNumber: 70,
  ),
  SuraDataModel(
    suraNameEn: "Nuh",
    suraNameAr: "نوح",
    versesCount: 28,
    suraNumber: 71,
  ),
  SuraDataModel(
    suraNameEn: "Al-Jinn",
    suraNameAr: "الجن",
    versesCount: 28,
    suraNumber: 72,
  ),
  SuraDataModel(
    suraNameEn: "Al-Muzzammil",
    suraNameAr: "المزّمّل",
    versesCount: 20,
    suraNumber: 73,
  ),
  SuraDataModel(
    suraNameEn: "Al-Muddathir",
    suraNameAr: "المدّثر",
    versesCount: 56,
    suraNumber: 74,
  ),
  SuraDataModel(
    suraNameEn: "Al-Qiyamah",
    suraNameAr: "القيامة",
    versesCount: 40,
    suraNumber: 75,
  ),
  SuraDataModel(
    suraNameEn: "Al-Insan",
    suraNameAr: "الإنسان",
    versesCount: 31,
    suraNumber: 76,
  ),
  SuraDataModel(
    suraNameEn: "Al-Mursalat",
    suraNameAr: "المرسلات",
    versesCount: 50,
    suraNumber: 77,
  ),
  SuraDataModel(
    suraNameEn: "An-Naba'",
    suraNameAr: "النبأ",
    versesCount: 40,
    suraNumber: 78,
  ),
  SuraDataModel(
    suraNameEn: "An-Nazi'at",
    suraNameAr: "النازعات",
    versesCount: 46,
    suraNumber: 79,
  ),
  SuraDataModel(
    suraNameEn: "Abasa",
    suraNameAr: "عبس",
    versesCount: 42,
    suraNumber: 80,
  ),
  SuraDataModel(
    suraNameEn: "At-Takwir",
    suraNameAr: "التكوير",
    versesCount: 29,
    suraNumber: 81,
  ),
  SuraDataModel(
    suraNameEn: "Al-Infitar",
    suraNameAr: "الإنفطار",
    versesCount: 19,
    suraNumber: 82,
  ),
  SuraDataModel(
    suraNameEn: "Al-Mutaffifin",
    suraNameAr: "المطفّفين",
    versesCount: 36,
    suraNumber: 83,
  ),
  SuraDataModel(
    suraNameEn: "Al-Inshiqaq",
    suraNameAr: "الإنشقاق",
    versesCount: 25,
    suraNumber: 84,
  ),
  SuraDataModel(
    suraNameEn: "Al-Buruj",
    suraNameAr: "البروج",
    versesCount: 22,
    suraNumber: 85,
  ),
  SuraDataModel(
    suraNameEn: "At-Tariq",
    suraNameAr: "الطارق",
    versesCount: 17,
    suraNumber: 86,
  ),
  SuraDataModel(
    suraNameEn: "Al-A'la",
    suraNameAr: "الأعلى",
    versesCount: 19,
    suraNumber: 87,
  ),
  SuraDataModel(
    suraNameEn: "Al-Ghashiyah",
    suraNameAr: "الغاشية",
    versesCount: 26,
    suraNumber: 88,
  ),
  SuraDataModel(
    suraNameEn: "Al-Fajr",
    suraNameAr: "الفجر",
    versesCount: 30,
    suraNumber: 89,
  ),
  SuraDataModel(
    suraNameEn: "Al-Balad",
    suraNameAr: "البلد",
    versesCount: 20,
    suraNumber: 90,
  ),
  SuraDataModel(
    suraNameEn: "Ash-Shams",
    suraNameAr: "الشمس",
    versesCount: 15,
    suraNumber: 91,
  ),
  SuraDataModel(
    suraNameEn: "Al-Lail",
    suraNameAr: "الليل",
    versesCount: 21,
    suraNumber: 92,
  ),
  SuraDataModel(
    suraNameEn: "Ad-Duha",
    suraNameAr: "الضحى",
    versesCount: 11,
    suraNumber: 93,
  ),
  SuraDataModel(
    suraNameEn: "Ash-Sharh",
    suraNameAr: "الشرح",
    versesCount: 8,
    suraNumber: 94,
  ),
  SuraDataModel(
    suraNameEn: "At-Tin",
    suraNameAr: "التين",
    versesCount: 8,
    suraNumber: 95,
  ),
  SuraDataModel(
    suraNameEn: "Al-Alaq",
    suraNameAr: "العلق",
    versesCount: 19,
    suraNumber: 96,
  ),
  SuraDataModel(
    suraNameEn: "Al-Qadr",
    suraNameAr: "القدر",
    versesCount: 5,
    suraNumber: 97,
  ),
  SuraDataModel(
    suraNameEn: "Al-Bayyina",
    suraNameAr: "البينة",
    versesCount: 8,
    suraNumber: 98,
  ),
  SuraDataModel(
    suraNameEn: "Az-Zalzalah",
    suraNameAr: "الزلزلة",
    versesCount: 8,
    suraNumber: 99,
  ),
  SuraDataModel(
    suraNameEn: "Al-Adiyat",
    suraNameAr: "العاديات",
    versesCount: 11,
    suraNumber: 100,
  ),
  SuraDataModel(
    suraNameEn: "Al-Qari'a",
    suraNameAr: "القارعة",
    versesCount: 11,
    suraNumber: 101,
  ),
  SuraDataModel(
    suraNameEn: "At-Takathur",
    suraNameAr: "التكاثر",
    versesCount: 8,
    suraNumber: 102,
  ),
  SuraDataModel(
    suraNameEn: "Al-Asr",
    suraNameAr: "العصر",
    versesCount: 3,
    suraNumber: 103,
  ),
  SuraDataModel(
    suraNameEn: "Al-Humazah",
    suraNameAr: "الهمزة",
    versesCount: 9,
    suraNumber: 104,
  ),
  SuraDataModel(
    suraNameEn: "Al-Fil",
    suraNameAr: "الفيل",
    versesCount: 5,
    suraNumber: 105,
  ),
  SuraDataModel(
    suraNameEn: "Quraysh",
    suraNameAr: "قريش",
    versesCount: 4,
    suraNumber: 106,
  ),
  SuraDataModel(
    suraNameEn: "Al-Ma'un",
    suraNameAr: "الماعون",
    versesCount: 7,
    suraNumber: 107,
  ),
  SuraDataModel(
    suraNameEn: "Al-Kawthar",
    suraNameAr: "الكوثر",
    versesCount: 3,
    suraNumber: 108,
  ),
  SuraDataModel(
    suraNameEn: "Al-Kafirun",
    suraNameAr: "الكافرون",
    versesCount: 6,
    suraNumber: 109,
  ),
  SuraDataModel(
    suraNameEn: "An-Nasr",
    suraNameAr: "النصر",
    versesCount: 3,
    suraNumber: 110,
  ),
  SuraDataModel(
    suraNameEn: "Al-Masad",
    suraNameAr: "المسد",
    versesCount: 5,
    suraNumber: 111,
  ),
  SuraDataModel(
    suraNameEn: "Al-Ikhlas",
    suraNameAr: "الإخلاص",
    versesCount: 4,
    suraNumber: 112,
  ),
  SuraDataModel(
    suraNameEn: "Al-Falaq",
    suraNameAr: "الفلق",
    versesCount: 5,
    suraNumber: 113,
  ),
  SuraDataModel(
    suraNameEn: "An-Nas",
    suraNameAr: "الناس",
    versesCount: 6,
    suraNumber: 114,
  ),
];

class QuranScreen extends StatefulWidget {
    const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {

  @override
  void initState() {
    super.initState();
    loadRecentSura();
  }


  Future<void> loadRecentSura() async{

    final recentNumber = await CashedData.getRecentSura();
    
    final result = recentNumber.map((number) => quranSura.firstWhere((sura) => sura.suraNumber == number),).toList();
    if(!mounted) return;
    setState(() {

      _recentlyData = result;

    });
  }

  Future<void> openSura(SuraDataModel suraDataModel ) async{

   await CashedData.addSura(suraDataModel.suraNumber);
    Navigator.pushNamed(context, AppRoutesName.quranDeitels,arguments: suraDataModel);

   loadRecentSura();

  }

   List<SuraDataModel> _recentlyData = [];
  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    return Container(
     decoration: BoxDecoration(
       image: DecorationImage(image: Assets.images.quranBackground.provider(), fit: BoxFit.cover),
     ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Assets.images.headerImg.image(),
            Gap(21),
            CustomTextFormField(),
            Gap(20),
            if(_recentlyData.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Most Recently',style: them.textTheme.bodyLarge?.copyWith(fontSize: 16),
              ),
            ),
            if(_recentlyData.isNotEmpty)
            Gap(10),
            if(_recentlyData.isNotEmpty)
            SizedBox(
              height: 150,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 20),
                scrollDirection: Axis.horizontal,
                  itemBuilder:
                  (context, index) {
                    return MostRecentCard(suraDataModel: _recentlyData[index],);
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10,);
                    },
                  itemCount: _recentlyData.length
              ),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text('Sura Name',style: them.textTheme.bodyLarge?.copyWith(fontSize: 16),
              ),
            ),
            Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(0),
                  itemBuilder: (context, index) {
                    return CustomSuraItem(
                        onTap: (){
                          openSura(quranSura[index]);
                        },
                        suraDataModel: quranSura[index]);
                  },
                  separatorBuilder: (context, index) {
                    return Divider(endIndent: 44, indent: 44,);

                  },
                  itemCount: quranSura.length,
              ),
            )


          ],
        ),
      ),
    );


        }
}
