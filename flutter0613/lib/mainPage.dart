import 'package:flutter/material.dart';
import 'package:flutter0613/sub2Page.dart';

// 화면 자체를 이동하기 때문에 Stateless로 만들어도 됨
// 이동시 화면 구성이 바뀐다면 Stateful 사용
class mainPage extends StatelessWidget {
  const mainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Main Page', style: TextStyle(fontSize: 30,
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,),),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    // 버튼 클릭 시 Main Page => Sub Page로 이동하는 기능 연결!
                    // Navigator.push(context, route)
                    // context : 현재 화면에 대한 정보를 담고 있는 변수!
                    // route : 이동하고자 하는 경로를 지정하는 위치!

                    // MaterialPageRoute(builder: builder)
                    // builder : 이동하고자 하는 페이지를 호출! => 출발점(context)과 도착점(클래스의 이름) 지정!
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => subPage()));
                    Navigator.pushAndRemoveUntil(context, 
                        MaterialPageRoute(builder: (_) => subPage()), (route) => false);
                  },
                      child: Text(
                        'Sub Page 이동', style: TextStyle(color: Colors.white,),),
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(
                        Colors.deepPurple,))),
                  ElevatedButton(onPressed: () {
                    // 버튼 클릭 시 Main Page =>
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => sub2Page()));
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (_) => sub2Page()), (route) => false);
                  },
                      child: Text(
                        'Sub2 Page 이동', style: TextStyle(color: Colors.white,),),
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(
                        Colors.deepPurple,))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// 새로운 클래스를 생성할 수 있는 영역!
class subPage extends StatelessWidget {
  const subPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sub Page', style: TextStyle(fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold,),),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    // 버튼 클릭 시 Sub Page => Main Page로 이동하는 기능 연결!
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => mainPage()));
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (_) => mainPage()), (route) => false);
                  },
                      child: Text(
                        'Main Page 이동', style: TextStyle(color: Colors.white,),),
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(
                        Colors.green,))),
                  ElevatedButton(onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => sub2Page()));
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (_) => sub2Page()), (route) => false);
                  },
                      child: Text(
                        'Sub2 Page 이동', style: TextStyle(color: Colors.white,),),
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(
                        Colors.green,))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
