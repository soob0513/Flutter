import 'package:flutter/material.dart';
import 'package:flutter0619/Weather/SampleWeather.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class WeatherMain extends StatelessWidget {
  const WeatherMain({super.key, required this.w});

  final SampleWeather w;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.lightBlue[100],
        elevation: 0.0,

      ),
      body: Container(
          color: Colors.lightBlue[100],
          padding: EdgeInsets.all(12),

          child: Column(
              children:[

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(w.name, style: TextStyle(
                        fontSize: 58,
                        fontWeight: FontWeight.bold,
                    ),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // SizedBox(height: 35,),
                        Text('${w.main.temp}도',style: TextStyle(fontSize: 33, color: Colors.deepPurple, fontWeight: FontWeight.bold,),),
                        // 날짜 가져오기 -> intl 라이브러리 사용
                        // DateFormat("출력방법")
                        // y - 연도
                        // M - 월
                        // d - 일
                        // yy년 MM월 dd일 - 24년 6월 26일
                        // yyyy년 - 2024년
                        Text(DateFormat("yy년 MM월 dd일").format(DateTime.now()),style: TextStyle(fontSize: 20)),

                        // 시간 가져오기 -> time_builder 라이브러리
                        TimerBuilder.periodic(
                            Duration(seconds: 1),  // 시간을 1초마다 리턴
                            builder: (context) {
                              return Text(DateFormat('HH:mm:ss').format(DateTime.now()),style: TextStyle(fontSize: 20));
                              //Text('00시 00분',style: TextStyle(fontSize: 20))
                            }
                        )
                      ],
                    ),
                    SizedBox(width: 1,),
                  ],
                ),

                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Image.network('https://openweathermap.org/img/wn/${w.weather[0].icon}.png'),
                            // Icon(Icons.sunny, size: 50,),
                            SizedBox(height: 5,),
                            Text(w.weather[0].main, style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        height: double.infinity,
                        color: Colors.grey[300],
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                      ),

                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(Icons.water_drop_outlined, size: 50,),
                            ),
                            Text('${w.main.humidity}', style: TextStyle(fontSize: 18),),
                          ],),
                      ),
                      Container( width: 1,
                        height: double.infinity,
                        color: Colors.grey[300],
                        margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Icon(Icons.wind_power, size: 50,),
                            ),
                            Text('${w.wind.speed}', style: TextStyle(fontSize: 18),),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}
