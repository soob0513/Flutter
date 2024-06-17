import 'package:flutter/material.dart';

class ExRyan extends StatefulWidget {
  const ExRyan({super.key});

  @override
  State<ExRyan> createState() => _ExRyanState();
}


class _ExRyanState extends State<ExRyan> {
  // 1. 데이터를 관리하기 위한 리스트 생성! -> 이미지/텍스트
  var imgList = ['image/ryan1.jpg', 'image/ryan2.png', 'image/ryan3.jpg',
                 'image/ryan4.png', 'image/ryan5.png', 'image/ryan6.jpg'];
  var txtList = ['리틀 라이언','반짝 라이언','하트 라이언',
                 '춘식이와의 만남','룸메는 춘식이','좋아요 라이언'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      // 3. 액션을 감지하는 버튼 생성
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // 버튼이 눌리면 리스트가 추가되는 기능 설계!
          // setState(() {
          //   imgList.add('image/pichu.jpg');
          //   txtList.add('귀여운 피츄');
          //   print('text');
          // });
        },
        child: Icon(Icons.add,),
      ),

      // 2. ListView 생성 작업 시작!
      body: SafeArea(
        child: ListView.builder(
            itemCount: imgList.length,
            itemBuilder: (context, index) =>
                Card(
                  child: Row(
                    children: [
                      // 각각의 이미지의 크기를 일정한 비율로 맞추기 위한 Expanded 위젯
                      Expanded(child: Image.asset(imgList[index])),
                      Expanded(
                        child: Column(
                          children: [
                            Text('${txtList[index]}',style: TextStyle(fontSize: 20),),
                            Text('${index +1}번째 라이언',style: TextStyle(fontSize: 18,),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
