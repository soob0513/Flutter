import 'package:flutter/material.dart';

class ExKakao extends StatelessWidget {
  const ExKakao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: BorderRadius.circular(10),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('image/kakao_img.png', width: 30, height: 30,),
              SizedBox(width: 20,),
              Text('카카오톡으로 로그인하기', style: TextStyle(fontSize: 16),),
            ],
          ),
        ),
      ),
    );
  }
}