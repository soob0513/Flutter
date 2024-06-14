void main(){
  Person p1 = Person('채수민', 20, '여성');
  // p1이라고 하는 이름으로 변수값을 사용할건데, 변수의 데이터타입은 Person이며
  // p1이 담고 있는 데이터들은 Person이라는 클래스에 맞춰서 가질겁니다
  // print(p1.name); // null

  // p1.name = '채수민';
  // p1.age = 20;
  // p1.gender = '여성';

  Person p2 = Person('김민수', 20, '남성');

  print(p1.name);
  print(p2.name);

  Person p3 = Person.method();
  p3.name = "강규남";
  print(p3.name);
}

// 객체 : 설계도(class)를 통해서 만들어지는 실체!
// 설계도 => 실체 로 변환하는 과정을 인스턴스화! 라고 한다.

class Person {
  // late 키워드 : 추후에 변수에 초기화 값을 연결할 수 있도록 도와주는 기능
  late String name;
  late int age;
  late String gender;

  // 설계도를 통해서 객체 생성 시 구체적으로 가질 값들을 연결하는 '생성자 메소드'
  // 생성자 메소드의 특징! -> 메소드의 이름은 꼭 클래스와 동일한 이름으로 생성해야 한다!
  // Person(String name, int age, String gender){
  //   // this. 키워드 : 설계도가 가지고 있는 나만의 필드를 지칭!
  //   this.name = name;
  //   this.age = age;
  //   this.gender = gender;
  // }



  // 한줄로 생성자 메소드 만들기
  Person(this.name, this.age, this.gender);

  // 생성자 메소드를 여러 개 만들기 위해서는 네이밍이 필요하다!
  Person.method(){

  }
}