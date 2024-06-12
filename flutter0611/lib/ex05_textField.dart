import 'package:flutter/material.dart';

class ExTextField extends StatefulWidget {
  const ExTextField({super.key});

  @override
  State<ExTextField> createState() => _ExTextFieldState();
}

class _ExTextFieldState extends State<ExTextField> {

  // 텍스트 필드의 값을 가져올 수 있는 controller 생성
  // => 각각의 필드를 따로 관리하기 위하여 텍스트 필드의 개수만큼 생성!
  TextEditingController emailCon = TextEditingController();
  TextEditingController pwCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              // TextField 꾸미기
              decoration: InputDecoration(
                // label: Text('email'),
                label: Icon(Icons.email),
                hintText: 'email을 입력해 주세요', // Text 위젯을 사용하지 않아도 문자가 들어간다!
                hintStyle: TextStyle(color: Colors.grey[300]),
              ),
              controller: emailCon,
            ),

              TextField(
                // keyboardType: TextInputType.text,  // --> text타입이 기본값(생략 가능)
                obscureText: true,  // 입력된 값들을 * 표시!
                decoration: InputDecoration(
                  label: Icon(Icons.password),
                  hintText: '비밀번호를 입력하세요',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
                controller: pwCon,
              ),

              SizedBox(height: 30,),

              ElevatedButton(onPressed: (){
                // 버튼이 눌리면 TextField에 입력된 내용들을 가져오기!
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(content: Text('${emailCon.text} / ${pwCon.text}')),
                // );

                // print(emailCon.text);

                String email = emailCon.text;
                print(email);

                // 서버를 통하여 해당 데이터를 DB에 전달
                // => DB에 있는 값을 체크하고 결과를 다시 돌려 받는다
                // => 결과값에 따라 화면이동 / 현 화면 유지

              }, child: Text('login')),
            ],
          ),
        ),
      ),
    );
  }
}
