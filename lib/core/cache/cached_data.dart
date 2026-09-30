import 'package:shared_preferences/shared_preferences.dart';

class CachedData {

  static final String _key = "recents_sura ";
  static final int _maxRecentSura = 5;
  static const String _onboardingKey = 'onboarding_completed';

 static Future<void> addSura(int suraNumber) async{

    final prefs = await SharedPreferences.getInstance();
    final recent = prefs.getStringList(_key) ?? <String> [];

    recent.remove(suraNumber.toString());

    recent.insert(0, suraNumber.toString());

   final trimmed =  recent.take(_maxRecentSura).toList();

   await prefs.setStringList(_key, trimmed);




  }

  static Future<List<int>> getRecentSura() async{

    final prefs = await SharedPreferences.getInstance();
    final recent =  prefs.getStringList(_key) ?? <String> [];

    return recent.map((e) => int.parse(e)).toList();

  }


  static Future<bool> isOnboardingCompleted() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getBool(_onboardingKey) ?? false;
  }

  static Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool(_onboardingKey, true);
  }

}