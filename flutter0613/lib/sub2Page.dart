import 'package:flutter/material.dart';

import 'mainPage.dart';

class sub2Page extends StatelessWidget {
  const sub2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Sub2 Page', style: TextStyle(fontSize: 30,
                color: Colors.pinkAccent,
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
                        Colors.pinkAccent,))),
                  ElevatedButton(onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => subPage()));
                    Navigator.pushAndRemoveUntil(context,
                        MaterialPageRoute(builder: (_) => subPage()), (route) => false);
                  },
                      child: Text(
                        'Sub Page 이동', style: TextStyle(color: Colors.white,),),
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(
                        Colors.pinkAccent,))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
