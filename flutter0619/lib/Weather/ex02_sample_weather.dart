import 'package:flutter/material.dart';
import 'package:flutter0619/Weather/SampleWeather.dart';
import 'package:http/http.dart';

class ExWeather extends StatelessWidget {
  const ExWeather({super.key});

  @override
  Widget build(BuildContext context) {
    getWeatherData();
    return Scaffold();
  }
}


void getWeatherData() async{
  Response res = await get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=35.14537&lon=126.919163&appid=311b37be82274842eb40377115dbd958&units=metric"));
  print(res.statusCode); // 에러 코드 출력 -> 정상 : 200번대
  if (res.statusCode == 200) {

  }
  print(res.body); // res.body --> 넘어오는 데이터 타입 : String

  SampleWeather w = sampleWeatherFromJson(res.body);
  print(w.clouds);  // decode 되어서 객체로 접근 가능해졌다!
  print(w.main.temp);
}