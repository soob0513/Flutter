import 'package:flutter/material.dart';

class ExAxis extends StatelessWidget {
  const ExAxis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.lightBlue[200],
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('첫번째 텍스트'),
                  Text('두번째 텍스트'),
                  Text('세번째 텍스트'),
                ],
              ),
            ),
            Container(
              color: Colors.green,
              height: 100,
              child: Row(
                // spaceBetween : 양끝을 화면에 고정시키고 나머지 위젯을 일정 간격으로 배치하는 속성!
                // spaceEvenly : 양끝과 위젯들 사이사이에 일정한 간격을 주는 속성!
                // spaceAround : 위젯의 양옆에 일정한 여백을 주는 속성!
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('첫번째 텍스트'),
                  Text('두번째 텍스트'),
                  Text('세번째 텍스트'),
                  // Text('네번째 텍스트'),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
