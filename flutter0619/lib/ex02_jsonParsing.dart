import 'package:flutter/material.dart';
import 'package:flutter0619/UserModel.dart';
import 'package:http/http.dart';

// 통신이 필요하다! -> Stateful 설계!
// 통신을 진행할 경우 필요한 라이브러리! => http 라이브러리!
class ExJson extends StatefulWidget {
  const ExJson({super.key});

  @override
  State<ExJson> createState() => _ExJsonState();
}

class _ExJsonState extends State<ExJson> {

  // 대량의 데이터를 담을 수 있는 리스트 구조 선언!
  List<User> userList = [];

  // 데이터 통신 시도!
  Future<List<User>> getInfo() async{

    // 통신을 [요청=>request]할 url 주소 필요! => String 타입으로 지정!
    String url = "https://jsonplaceholder.typicode.com/users";

    // 요청 url로부터 [응답=>response]값 받아오기
    var res = await get(Uri.parse(url));
    print(res.statusCode);
    // 200 코드 : 응답 성공 시!
    // 500 코드 : 데이터에 문제가 있을 경우
    // 404 코드 : 페이지에 대한 오류

    userList = userFromJson(res.body);
    print(userList[0].address.city);

    return userList;
  }

  @override
  Widget build(BuildContext context) {
    getInfo();
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: getInfo().then((value) => userList = value,),  // 디자인에 데이터를 연결하겠다
          builder: (context, snapshot) {  // snapshot : 결과값 (결과에 대한 값들을 찍어서 보낸다)
            // 통신의 상태에 따라 화면을 설계할 수 있는지 없는지 판단!
            if(!snapshot.hasData){
              // 로딩 화면 띄우기
              return Center(child: CircularProgressIndicator());
            }else {
              // 띄워줄 데이터가 있다면 해당 내용을 화면으로 return
              return ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      title: Text(userList[index].name),
                      leading: Icon(Icons.account_circle,),
                      subtitle: Text(userList[index].email,),
                      trailing: Icon(Icons.android,),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
