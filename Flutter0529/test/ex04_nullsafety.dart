void main(){

  // dart언어는 null값을 허용하지 않는다!

  // int a = null;

  // 1. Nullable 변수 사용 -> null 값이 들어올 수도 있습니다~
  // 자료형 형태의 뒤에 ?기호를 사용하여 null값을 허용 한다!
  int? a = 5;
  String? b = "flutter";
  double? c = 3.14;

  a = null;
  b = null;
  c = null;


  // 2. NonNull -> 선언 변수에 대하여 절대! null값이 들어올 수 없음을 지정하는 기능!
  int d = 6;
  d!;

  d = 1;
  // d = null;

  // Nullable 변수 사용하면 가능 -> 근데 같이 사용 안 하니까.
  int? e = 6;
  e!;

  e = 1;
  e = null;

}