import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  // 위치 정보에 대한 기능을 수행하는 메소드 생성
  void getLocation() async{
    await Geolocator.requestPermission();

    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: (){
              // 나의 위치를 찾아올 수 있는 통신!
              getLocation();
            },
            child: Text('내 위치'),
        ),
      ),
    );
  }
}
