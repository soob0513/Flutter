// 파일 이름에 한글 금지, 대문자 금지

// 코드가 실행될 수 있는 공간 생성! => main 함수

void main(){

  // 1. bool 자료형을 사용한 변수 선언
  bool a = true;
  print(a);

  // +) 변수를 선언할 때 공간의 이름과 해당 공간의 타입이 필요하다!
  int b = 5;
  int c; // 공간만 만들어진 형태

  double d = 3.14;
  double d2 = 3; // 3.0
  print(b);
  print(d);
  print(d2);

  // 2. 정수와 실수를 모두 담을 수 있는 숫자형! -> num
  num e1 = 5;
  num e2 = 3.14;

  print(e1);
  print(e2);

  // +) 데이터의 타입을 확인하는 방법! -> 저장된 실제 데이터의 타입을 기준으로! (선언타입X)
  print(e1.runtimeType);   // -> int
  print(e2.runtimeType);   // -> double
  print(a.runtimeType);    // -> bool

  // dart언어의 문자형 데이터는 python과 상당히 유사하다!
  // '' / "" / ''' '''
  String word1 = 'hello world';
  String word2 = "hello world";
  String word3 = '''hello world''';

  String word4 = '''
  다음주
  김치볶음밥
  맛있겠다''';

  print(word1);
  print(word2);
  print(word3);
  print(word4);


  // **) dart의 변수 표현 방법!
  // 1. var : 한번 지정을 하면 타입에 관하여 수정이 불가능 하다! (js 개념)
  // 2. dynamic : 지정 후 타입에 관하여 수정이 가능 하다! (C# 개념)

  var data1 = 2.1;
  var data2 = "2.1";
  // data2 = 2.1;  // 에러가 발생하며 형변환이나 다른 방식의 데이터 타입 변경이 불가능 하다!

  dynamic data3 = "2.0";
  data3 = 2.1;

}