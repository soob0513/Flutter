import 'package:flutter/material.dart';

class ExIcon extends StatelessWidget {
  const ExIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Stack(
              children: [
                Icon(Icons.favorite_border_sharp, size: 90,),
                Positioned(
                  left: 60,
                  top: 5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                  ),
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}