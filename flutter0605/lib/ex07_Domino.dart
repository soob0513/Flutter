import 'package:flutter/material.dart';

class ExDomino extends StatelessWidget {
  const ExDomino({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: 90,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(7),

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey[300],
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('아이유와 도미노를 더 맛있게',
                      style: TextStyle(fontSize: 16,
                        fontWeight: FontWeight.bold,),),
                    Text('도미노 매니아되고 ~40% 할인받자!',
                      style: TextStyle(fontSize: 13),),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Image.asset('image/domino.png'),),
            ],
          ),
        ),
      ),
    );
  }
}
