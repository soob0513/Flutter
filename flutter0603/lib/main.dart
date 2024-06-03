// 플러터를 실행하기 위해 반드시 필요한 material 패키지! => 어플에 대한 기본 디자인 불러오기
import 'package:flutter/material.dart';

import 'ex01_icon.dart';

// main() : 프로그램을 시작할 수 있는 시작점!
void main() {
  // runApp() : 최초 한번만 호출되는 함수로 플러터의 최상위 함수!
  // 매개변수로 Widget(하늘색 색상)을 받는다!
  runApp(const MyApp());
}

// MyApp 클래스는 위젯을 물려받아 만들어진 클래스이다!
// 실제 화면에 대한 기능이나 디자인을 담고 있는 곳!
class MyApp extends StatelessWidget {
  const MyApp({super.key});  // MyApp에 대한 생성자 선언

  // build메소드 오버라이딩(재정의)
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      // home : 어플이 시작되었을 때 가장 먼저 보여주고 싶은 화면을 연결!
      home: ExIcon(),
    );
  }
}

// 나만의 페이지를 만들어 home에 연결하기!
// 단축키 : stl + Enter
class Expage extends StatelessWidget {
  const Expage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold() : 화면을 구성하기 위한 기본 구조! 흰색 바탕을 가진다!
    return Scaffold(
      appBar: AppBar(
        title: Text('My Flutter App'),
        backgroundColor: Colors.indigo[200],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(   // child(단수) : 하위 위젯을 하나만 가질 수 있다.
            children: [  // children(복수) : 여러 개의 요소를 하나의 자식으로 묶는 기능
              Text('안녕하세요 반갑습니다~',
                style: TextStyle(fontSize: 30, backgroundColor: Colors.yellowAccent[100]),
                textAlign: TextAlign.center,
                // TextAlign의 영역은 입력된 Text의 크기만큼만 영역이 지정된다!
              ),
        
              Text('오늘이 월요일이라니..'),
            ],
          ),
        ),
      ),

    );
  }
}

