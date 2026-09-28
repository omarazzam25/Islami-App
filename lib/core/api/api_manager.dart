import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:islami/models/prayers_time_model.dart';
import 'package:islami/models/radio_response_model.dart';

import '../../models/reciters_response_model.dart';

class ApiManager {

 static Future<RadioResponseModel> getRadioData()async{
   try{
     Uri uri =  Uri.parse('https://www.mp3quran.net/api/v3/radios?language=ar');
     var response = await http.get(uri);
     var jsonResponse = jsonDecode(response.body);
     return RadioResponseModel.fromJson(jsonResponse);
     

   }catch(e){
     print(e.toString());
     rethrow;

   }


 }

 static Future<RecitersResponseModel> getRecitersData()async{
   try{
     Uri uri =  Uri.parse('https://www.mp3quran.net/api/v3/reciters?language=ar');
     var response = await http.get(uri);
     var jsonResponse = jsonDecode(response.body);
     return RecitersResponseModel.fromJson(jsonResponse);


   }catch(e){
     print(e.toString());
     rethrow;

   }


 }

 static Future<PrayersTimeModel> getPrayerTime () async{
   var date = DateFormat('dd-MM-yyyy').format(DateTime.now());

   try{
     Uri uri = Uri.parse('https://api.aladhan.com/v1/timingsByCity/$date?city=cairo&country=egypt');

     var response = await http.get(uri);
     var jsonResponse = jsonDecode(response.body);
     return PrayersTimeModel.fromJson(jsonResponse);
     
     
   }catch(e){
     rethrow;
   }


 }

}