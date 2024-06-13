import 'package:flutter/material.dart';

class popMainPage extends StatelessWidget {
  const popMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Main Page', style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.bold, fontSize: 30,),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => pop2Page()));
                Navigator.pop(context);
              }, child: Text('다음 페이지', style: TextStyle(color: Colors.white,),),
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(
                  Colors.blueAccent,),),),
            ],
          ),
        ),
      ),
    );
  }
}

// pop2 페이지 추가!
class pop2Page extends StatelessWidget {
  const pop2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('sub Page', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 30,),),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => popMainPage()));
                Navigator.pop(context);
              }, child: Text('메인 페이지', style: TextStyle(color: Colors.white,),),
                style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(
                  Colors.orange,),),),
            ],
          ),
        ),
      ),
    );
  }
}
