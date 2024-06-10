// 선생님풀이
import 'package:flutter/material.dart';

class ExCu2 extends StatelessWidget {
  const ExCu2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. appBar에 대한 디자인 작업하기!
      appBar: AppBar(
        title: Text('더보기', style: TextStyle(fontWeight: FontWeight.bold,),),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.settings,),),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              // 1. 사용자의 정보를 출력할 수 있는 Container 디자인!
              Container(
                width: double.infinity,
                height: 80,
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('박*호님', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),),
                    Row(
                      children: [
                        Text('Friend  ', style: TextStyle(fontSize: 16, color: Colors.purple, fontWeight: FontWeight.bold,),),
                        Text('155p', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ],
                ),
              ),

              // 2. 서비스 타이틀이 들어갈 Container 생성
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.bottomLeft,
                height: 50,
                child: Text('서비스', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
              ),

              // 3. 서비스 아이콘이 들어갈 Container 생성
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Icon(Icons.copyright, size: 50,),
                            Positioned(
                              bottom: 3,
                              right: 3,
                              child: Container(
                                alignment: Alignment.center,
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Text('N', style: TextStyle(color: Colors.white, fontSize: 12),),
                              ),
                            ),
                          ],
                        ),
                        Text('포인트 충전소', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                      ],
                    ),

                    SizedBox(width: 20,),

                    // 3-2. 새로운 아이콘 추가
                    Column(
                      children: [
                        Stack(
                          children: [
                            Icon(Icons.chat, size: 49,),
                            Positioned(
                              bottom: 3,
                              right: 3,
                              child: Container(
                                alignment: Alignment.center,
                                width: 15,
                                height: 15,
                                decoration: BoxDecoration(
                                  color: Colors.pinkAccent,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Text('N', style: TextStyle(color: Colors.white, fontSize: 12),),
                              ),
                            ),
                          ],
                        ),
                        Text('상담하기', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}