import 'package:flutter/material.dart';

class FinalImage extends StatelessWidget {
  const FinalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 예제', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green[200],
      ),
      body: Column(
        children: [
          Row(

            // 연결 시 위치를 어디로 잡아줄 것인지 설정!
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Image.asset('image/land.jpg', width: 120, height:120,),
              Text('안녕 내 이름은 쉐이미야'),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset('image/sky.jpg', width: 120, height:120,),
              Text('안녕 내 이름은 쉐이미야'),
            ],
          ),
        ],
      ),
    );
  }
}
