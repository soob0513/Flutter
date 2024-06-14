import 'package:flutter0613/screen/bluePage.dart';
import 'package:flutter0613/screen/greenPage.dart';
import 'package:flutter0613/screen/redPage.dart';

// 경로들을 관리할 수 있는 클래스 생성
class RouteName {
  // static은 해당하는 RouteName 클래스가 사용됨과 동시에 변수에 대한 내용이 초기화되도록 작업!
  // 경로는 변하지 않아야 하므로 const 키워드 사용!
  static const redPage = '/red';
  static const greenPage = '/green';
  static const bluePage = '/blue';
}

var rn = {
  RouteName.redPage : (context) => RedPage(),
  RouteName.greenPage : (context) => GreenPage(),
  RouteName.bluePage : (context) => BluePage(),
};