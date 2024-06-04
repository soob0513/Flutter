import 'package:flutter/material.dart';

class ExImage extends StatelessWidget {
  const ExImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('image/land.jpg', width: 200,height: 200,),
              Text('No.0492 쉐이미 랜드폼'),
              Image.asset('image/sky.jpg', width: 200, height: 200,),
              Text('No.0492 쉐이미 스카이폼'),
            ],
          ),
        ),
      ),
    );
  }
}
