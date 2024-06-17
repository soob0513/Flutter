import 'package:flutter/material.dart';

// [ListView]
// 1. 대량의 데이터를 관리할 수 있는 리스트 필요!
// 2. 대량의 데이터를 띄울 디자인 필요

class ExVertical extends StatelessWidget {
  const ExVertical({super.key});

  @override
  Widget build(BuildContext context) {

    // List<int> list = [];
    var intList = List<int>.generate(50, (i) => i++); // 리스트 안에 1씩 증가하면서 50개를 만들겠다!
    // -> 0 ~ 49 => 총 50개

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(

            // 생성하지 않으면 화면 설계 시 오류가 발생!
            // 아이템의 개수를 지정하기 위해 생성된 리스트의 길이를 활용한다!
            itemCount: intList.length,

            // itemBuilder : 리스트뷰의 필수요소!
            itemBuilder: (context, index) => Container(
              height: 50,
              margin: EdgeInsets.all(4),
              color: Colors.grey[300],
              child: Text('${intList[index] + 1}',style: TextStyle(fontSize: 25,),),
            ),
        ),
      ),
    );
  }
}
