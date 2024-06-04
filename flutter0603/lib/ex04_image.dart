// 선생님 풀이
import 'package:flutter/material.dart';

class Ex04Image extends StatelessWidget {
  const Ex04Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 예제', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('image/nim.jpg', width: 120, height: 120,),
            Text('귀여운 님피아 이미지 띄우기'),
          ],
        ),
      ),
    );
  }
}
