import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ExToast extends StatelessWidget {
  const ExToast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
              
              // 토스트 메세지 생성 시작!
              Fluttertoast.showToast(
                  msg: "라이브러리 연결 성공", // 메세지 내용
                  toastLength: Toast.LENGTH_SHORT, // 메세지가 띄워지는 시간 => 안드로이드 용
                  gravity: ToastGravity.BOTTOM,  // 메시지가 띄워지는 위치
                  timeInSecForIosWeb: 1, // ios용 웹에 대한 메세지 띄우는 시간
                  backgroundColor: Colors.indigo,
                  textColor: Colors.white,
                  fontSize: 16.0,

                  // 웹 용으로 사용할 수 있는 속성
                  webBgColor: "red",
                  webPosition: "center",

              );
            }, child: Text('토스트 메세지'),
          ),
        ),
      ),
    );
  }
}
