import 'package:flutter/material.dart';

// Grid를 생성하는 방식은 두가지가 있다!
// 1. count 방식 / 2. extent 방식


// 1. Count 방식
class ExGridCount extends StatelessWidget {
  const ExGridCount({super.key});

  @override
  Widget build(BuildContext context) {

    var intList3 = List<int>.generate(30, (i)=>i++);

    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            // 몇 개의 grid를 만들 것인지
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              // crossAxisCount -> 하나의 축에 몇 개의 데이터를 넣을지 지정하는 요소!
              crossAxisCount: 3,
              childAspectRatio: 1/2,  // 가로/세로 비율
              crossAxisSpacing: 20,   // 그리드와 그리드 사이의 간격 조절!
              mainAxisSpacing: 20,    // 축과 축 사이의 간격 조절!
            ),
            itemCount: intList3.length,
            itemBuilder: (context, index) =>
                // Card 위젯 : 기본으로 모서리가 둥글게 디자인 되어있음
                Card(
                  child: Container(
                    color: Colors.blueAccent[100],
                    child: Text('${intList3[index]+1}번째'),
                  ),
                ),
        ),
      ),
    );
  }
}


// 2. Extent 방식
class ExGridExtent extends StatelessWidget {
  const ExGridExtent({super.key});

  @override
  Widget build(BuildContext context) {

    var intList4 = List<int>.generate(30, (i)=>i++);

    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            // extent : 디바이스의 너비를 기준으로 배치하는 기능!
            // 디바이스 너비 / maxCrossAxisExtent(지정값) +1 만큼 그리드를 배치!
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
            ),
            itemCount: intList4.length,
            itemBuilder: (context, index)=> 
                 Card(
                   child: Container(
                     color: Colors.pinkAccent[100],
                     child: Text('${intList4[index]+1}번째'),
                   ),
                 ),
        ),
      ),
    );
  }
}
