import 'package:flutter/material.dart';

class ExLogin extends StatefulWidget {
  const ExLogin({super.key});

  @override
  State<ExLogin> createState() => _ExLoginState();
}

class _ExLoginState extends State<ExLogin> {

  TextEditingController emailCon = TextEditingController();
  TextEditingController pwCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(
          '로그인 화면', style: TextStyle(fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.yellowAccent,
      ),
      body: GestureDetector( // 화면에 대한 제스처를 감지할 수 있는 위젯!
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView( // 키보드가 화면에 노출될 때 화면이 가려지는 오류를 막기 위한 위젯!
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Column(
              children: [
                Image.asset('image/fighting.gif'),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    label: Text('email 입력'),
                    // labelStyle: TextStyle(color: Colors.red,),
                    hintText: 'example@example.com',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  ),
                  controller: emailCon,
                ),
                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    label: Text('비밀번호 입력'),
                    hintStyle: TextStyle(color: Colors.grey[400]),
                  ),
                  controller: pwCon,
                ),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){

                  // 로그인을 할 수 있는 사용자인지 체크 후 페이지 이동!
                  if (emailCon.text == 'smhrd' && pwCon.text == '123'){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${emailCon.text}님 환영합니다!')),
                    );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => dataCheck(email : emailCon.text, pw: pwCon.text,)));
                  } else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('로그인을 다시 시도하세요.')),
                    );
                  };

                  }, child: Text('로그인하기',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black,
                      ),),
                  style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.yellowAccent,)),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class dataCheck extends StatelessWidget {
  final String email; // 변수
  final String pw;    // 변수

  // const => 상수! 변하지 않는 값!
  const dataCheck({super.key, required this.email, required this.pw});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            child: Text('$email님 환영합니다!', style: TextStyle(fontSize: 30,),),
          ),
        ),
      ),
    );
  }
}
