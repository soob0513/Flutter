import 'package:flutter/material.dart';

class ExFlexible extends StatelessWidget {
  const ExFlexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 1. Flexible과 expanded를 사용하지 않았을 때!
            Text('Flexible, expanded 미사용'),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.redAccent,
                ),
                Container(
                  width: 300,
                  height: 50,
                  color: Colors.orangeAccent,
                ),
              ],
            ),
            SizedBox(height: 50,),

            Text('Flexible 사용'),
            SizedBox(height: 20,),

            Row(
              children: [
                // Flexible은 하위 위젯을 가지고 있으며, Row나 Column 안에서만 생성이 가능하다!
                Flexible(
                  // 기본 세팅 값 : FlexFit.loose
                  // fit: FlexFit.loose,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                ),
                Flexible(
                  // 기본 세팅 값 : FlexFit.loose
                  // fit: FlexFit.loose,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),

            Text('FlexFit.tight'),
            SizedBox(height: 20,),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),

            SizedBox(height: 50,),

            Text('Expanded 사용'),
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.redAccent,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.orangeAccent,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 300,
                    height: 50,
                    color: Colors.blueAccent,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
