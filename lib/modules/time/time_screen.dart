import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:islami/core/api/api_manager.dart';
import 'package:islami/core/utils/data_formatter.dart';
import 'package:islami/models/prayers_time_model.dart';
import 'package:islami/modules/time/widgets/evening_azkar_widget.dart';
import 'package:islami/modules/time/widgets/morning_azkar_widget.dart';
import 'package:islami/modules/time/widgets/next_prayer_timer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../core/gen/assets.gen.dart';
import '../../core/them/app_color.dart';

class TimeScreen extends StatefulWidget {
  const TimeScreen({super.key});

  @override
  State<TimeScreen> createState() => _TimeScreenState();
}

class _TimeScreenState extends State<TimeScreen> {
  @override
  Widget build(BuildContext context) {
    final them = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Assets.images.timeBackground.provider(),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 70.0,
                vertical: 30,
              ),
              child: Assets.images.headerImg.image(),
            ),
            SizedBox(
              width: size.width * 0.95,
              height: size.height * 0.3,
              child: FutureBuilder(
                future: ApiManager.getPrayerTime(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Skeletonizer(
                        enabled: true,
                        effect: ShimmerEffect(
                          baseColor: AppColor.primary,
                          highlightColor: AppColor.gold,
                          duration: const Duration(milliseconds: 1200),
                        ),
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Color(0xff856B3F),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/background_pray_time.png',
                            ),
                          ),
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              top: 10,
                              right: 0,
                              left: 0,
                              bottom: 0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '16 Jul,\n 2024',
                                    style: them.textTheme.bodyLarge?.copyWith(
                                      color: AppColor.white,
                                      fontSize: 16,
                                    ),
                                  ),

                                  Column(
                                    children: [
                                      Text(
                                        "Pray Time",
                                        style: them.textTheme.bodyLarge?.copyWith(
                                          color: AppColor.black.withValues(
                                            alpha: 0.71,
                                          ),
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'Friday',
                                        style: them.textTheme.bodyLarge?.copyWith(
                                          color: AppColor.black.withValues(
                                            alpha: 0.90,
                                          ),
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '16 Jul,\n 2024',
                                    style: them.textTheme.bodyLarge?.copyWith(
                                      color: AppColor.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(height: 80),
                                CarouselSlider.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index, realIndex) {
                                    return Container(
                                      width: 95,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [AppColor.black, AppColor.gold],
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: [
                                          Text(
                                           '',
                                            style: them.textTheme.bodyLarge
                                                ?.copyWith(
                                              color: AppColor.white,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text('',
                                            style: them.textTheme.bodyLarge
                                                ?.copyWith(
                                              color: AppColor.white,
                                              fontSize: 24,
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                  options: CarouselOptions(
                                    height: size.height * 0.15,
                                    enlargeCenterPage: true,
                                    enlargeFactor: 0.15,
                                    viewportFraction: 0.28,
                                  ),
                                ),
                                Gap(10),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ) );
                  }

                  else if (snapshot.hasError) {
                    return Column(
                      children: [
                        Text('Something Went Wrong'),
                        ElevatedButton(
                          onPressed: () {
                            ApiManager.getPrayerTime();
                            setState(() {});
                          },
                          child: Text('Try Again'),
                        ),
                      ],
                    );
                  }

                  PrayersTimeModel data = snapshot.data!;
                  Map<String, dynamic> prayerTimes = DataFormatter.sortPrayerTimes(data.data!.timings!.toJson());

                  Map<String,dynamic> prayerCountDown = DataFormatter.getNextPrayerCountDown(prayerTimes);

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Container(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xff856B3F),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/background_pray_time.png',
                          ),
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: 10,
                            right: 0,
                            left: 0,
                            bottom: 0,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  DataFormatter.formateGregorian(
                                    data.data!.date!.gregorian!,
                                  ),
                                  style: them.textTheme.bodyLarge?.copyWith(
                                    color: AppColor.white,
                                    fontSize: 16,
                                  ),
                                ),

                                Column(
                                  children: [
                                    Text(
                                      "Prayer Time",
                                      style: them.textTheme.bodyLarge?.copyWith(
                                        color: AppColor.black.withValues(
                                          alpha: 0.71,
                                        ),
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      data.data!.date!.gregorian!.weekday!.en!,
                                      style: them.textTheme.bodyLarge?.copyWith(
                                        color: AppColor.black.withValues(
                                          alpha: 0.90,
                                        ),
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  DataFormatter.formateHijri(
                                    data.data!.date!.hijri!,
                                  ),
                                  style: them.textTheme.bodyLarge?.copyWith(
                                    color: AppColor.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(height: 80),
                              CarouselSlider.builder(
                                itemCount: prayerTimes.length,
                                itemBuilder: (context, index, realIndex) {
                                  return Container(
                                    width: 95,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [AppColor.black, AppColor.gold],
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          prayerTimes.keys
                                              .elementAt(index)
                                              .toString(),
                                          style: them.textTheme.bodyLarge
                                              ?.copyWith(
                                                color: AppColor.white,
                                                fontSize: 16,
                                              ),
                                        ),
                                        Text(
                                          DataFormatter.formateTime(
                                            prayerTimes.values
                                                .elementAt(index)
                                                .toString(),
                                          ),
                                          style: them.textTheme.bodyLarge
                                              ?.copyWith(
                                                color: AppColor.white,
                                                fontSize: 24,
                                              ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                options: CarouselOptions(
                                  height: size.height * 0.15,
                                  enlargeCenterPage: true,
                                  enlargeFactor: 0.15,
                                  viewportFraction: 0.28,
                                ),
                              ),
                              Gap(10),
                              NextPrayerTimer(timeRemaining: prayerCountDown[prayerTimes.keys.first],),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Azkar',
                    style: them.textTheme.titleMedium?.copyWith(
                      color: AppColor.secondary,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EveningAzkarWidget(),
                  MorningAzkarWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
