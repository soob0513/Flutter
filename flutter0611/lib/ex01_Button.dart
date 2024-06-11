import 'package:flutter/material.dart';

class ExButton extends StatefulWidget {
  const ExButton({super.key});

  @override
  State<ExButton> createState() => _ExButtonState();
}

class _ExButtonState extends State<ExButton> {

  int count = 0;
  // --> 함수가 호출될 때 딱 한번만 선언됨
  
  @override
  Widget build(BuildContext context) {
    // int count = 0; 
    // --> 그때그때 메모리를 할당해서 count라는 변수를 실행될 때마다 매번 만들어줌
    // --> 메모리를 덜 사용할 수 있도록 여기에 넣는 것은 비추천
    
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count', style: TextStyle(fontSize: 30),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                // 버튼이 클릭되었을 때 상태를 체크할 수 있는 setState() 연결!
                setState(() {
                  count++;
                });
              }, child: Text('클릭'),),
            ],
          ),
        ),
      ),
    );
  }
}