void main(){
  print(test());
  test2('flutter');
}

// 람다식 메소드 : 메소드가 1줄일 경우 사용할 수 있는 메소드

// test() 메소드의 구조
// 리턴 타입 : int형
// 매개변수 : X
int test() => 10;

// 리턴 타입 : X
// 매개변수 : O
void test2(data) => print('$data 출력');