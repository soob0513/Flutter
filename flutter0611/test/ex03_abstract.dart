void main() {

}

// 클래스 => 완성된 설계도
// 추상클래스 => 미완성된 설계도
// 추상클래스의 특징
// 1. 추상 메소드가 하나라도 있다면 추상클래스로 바뀌어야 한다!
// 2. 추상 클래스를 물려받는 (상속) 경우, 추상적인 메소드를 강제적으로 꼭! 선언해야한다!

abstract class Animal{
  void move();

  void eat();

  void sleep(){
    print('꿀잠 자기');
  }
}

class dog extends Animal {
  @override
  void move(){
    print('꼬리를 흔들며 움직이기~');
  }

  @override
  void eat(){
    print('맛있는 사료 섭취!');
  }
}