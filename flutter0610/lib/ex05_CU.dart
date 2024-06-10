import 'package:flutter/material.dart';

class ExCu extends StatelessWidget {
  const ExCu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. appBar에 대한 디자인 작업하기!
      appBar: AppBar(
        title: Text('더보기', style: TextStyle(fontWeight: FontWeight.bold,),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings)),],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.all(8),
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('박*호님', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,),),
                // SizedBox(
                //   width: 130,
                //   height: 50,
                // ),
                Row(
                  children: [
                    Text('Friend', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.purple,),),
                    SizedBox(width: 5,),
                    Text('155p', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
                  ],
                ),

              ],
            ),

          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.fromLTRB(10, 40, 0, 10),
            height: 50,
            child: Text('서비스', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(18),
                child: Column(
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
                            child: Text('N', style: TextStyle(fontSize: 12,color: Colors.white),),
                          ),
                        ),
                      ],
                    ),
                    Text('포인트 충전소', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Icon(Icons.chat, size: 50,),
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
                          child: Text('N', style: TextStyle(fontSize: 12,color: Colors.white),),
                        ),
                      ),
                    ],
                  ),
                  Text('상담하기', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
