import 'package:flutter/material.dart';

class ExSizedBox extends StatelessWidget {
  const ExSizedBox({super.key});

  // sizedbox의 목적!
  // 1. child 위젯의 크기를 조정하기 위한 목적!
  // 2. 위젯들 사이의 공간을 추가하기 위한 목적!


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: 200,
          child: Container(
            color: Colors.pinkAccent[100],
            child: Row(
              children: [
                ElevatedButton(onPressed: (){}, child: Text('button1')),
                ElevatedButton(onPressed: (){}, child: Text('button2')),
              ],
            ),
          ),
        ),
      ),

    );
  }
}