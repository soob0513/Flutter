import 'package:flutter/material.dart';

class ExStack extends StatelessWidget {
  const ExStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          // alignment: Alignment.center,
          children: [
            // Positioned은 하나의 요소에만 사용해선 안된다!
            //=> 여러 요소들이 Positioned으로 감싸져야 결과를 확인할 수 있다!
            Positioned(
              top: 50,
              left: 32,
              child: Container(
                width: 110,
                height: 110,
                color: Colors.redAccent,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 15,
              child: Container(
                width: 80,
                height: 80,
                color: Colors.orangeAccent,
              ),
            ),
            Positioned(
              top: 14,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.yellowAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
