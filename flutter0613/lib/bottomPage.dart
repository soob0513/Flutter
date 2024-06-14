import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: [
      //   Center(
      //    child: Text('home'),
      //  ),
      // ],
      bottomNavigationBar: BottomNavigationBar(
        // items : 여러 개의 버튼을 관리할 수 있는 요소!
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,), label: 'home',),
          BottomNavigationBarItem(icon: Icon(Icons.chat),label: 'chat',),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: 'settings',),
        ],

        // 라벨에 대한 스타일 지정!
        showSelectedLabels: false,
        showUnselectedLabels: false,

        // bottom 영역 스타일 지정
        backgroundColor: Colors.yellow[300],
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.blueAccent,

      ),
    );
  }
}

// 각각의 버튼 클릭 시 띄워질 화면 설계! => 클래스 생성 후 관리!
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('home', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
    );
  }
}
