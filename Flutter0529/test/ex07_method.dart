void main(){

  // 메소드의 호출 방법 -> 메소드의 이름을 부른다!
  test(2, 3);
  print(test(2, 3));

  print(test2());

  // print(test3());  --> This expression has type 'void' and can't be used.
  test3();

}

// dart언어의 메소드 생성(선언) main메소드의 구조를 벗어나서 작업한다!
// def 키워드 사용 X

// 메소드를 생성하기 위한 구조로 제작!
// 1. 리턴의 타입이 명시되어야 한다! -> return 키워드를 가져야 한다!
// 2. 메소드의 이름을 명시한다!
// 3. 매개변수를 지정한다!

int test(int a, int b){
  return a+b;
}

String test2(){
  return 'flutter';
}

// dart언어에서 리턴타입이 없는 메소드 생성! -> void 키워드
void test3(){
  print('hello');
}