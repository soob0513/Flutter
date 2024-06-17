import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {

  int index = 0; // 화면을 관리하기 위한 인덱스 변수!
  List<Widget> pageList = [Home(), Chat(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // 1.
      // [
      //   Center(
      //    child: Text('home 화면'),
      //  ),
      //   Center(
      //     child: Text('chat 화면'),
      //   ),
      //   Center(
      //     child: Text('setting 화면'),
      //   ),
      // ][index],

      // 2. 화면들을 class로 관리해보자!
      // [화면에 대한 클래스를 관리하는 리스트][index],
      pageList[index],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: index,

        // 여러 개의 화면과 bottom버튼 연결하기!
        onTap: onItemTap, // 아이템이 선택됐을 때 진행할 메소드 연결!

        // items : 여러 개의 버튼을 관리할 수 있는 요소! -> 자동으로 인덱스 번호를 가짐
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
  // setState()는 stf가 가지고 있기 때문에 StatefulWidget 안에서 생성해야함!
  void onItemTap(int i){
    setState(() {
      // 여기서 쓰는 index : BottomNavigationBar 생성 시 자동으로 생성되는 인덱스랑 다름
      index = i;
    });
  }
} // stf 클래스의 범위


void onItemTap(int i){
}

// 각각의 버튼 클릭 시 띄워질 화면 설계! => 클래스 생성 후 관리!
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('home', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),)),
    );
  }
}


class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('chat', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),)),
    );
  }
}


class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('setting', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),)),
    );
  }
}