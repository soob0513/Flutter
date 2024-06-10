import 'package:flutter/material.dart';

class ExAppbar extends StatelessWidget {
  const ExAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar 영역'),
        backgroundColor: Colors.blueAccent,
        // appBar의 왼쪽에 띄워지는 버튼!
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu,),),
        // appBar의 오른쪽에 띄워지는 버튼! -> 여러 개를 띄울 수 있다.
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.settings,),)],
        foregroundColor: Colors.white,
      ),
    );
  }
}