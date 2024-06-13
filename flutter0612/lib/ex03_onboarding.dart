import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class ExOnboarding extends StatefulWidget {
  const ExOnboarding({super.key});

  @override
  State<ExOnboarding> createState() => _ExOnboardingState();
}

class _ExOnboardingState extends State<ExOnboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: OnBoardingSlider(
          headerBackgroundColor: Colors.white,
          finishButtonText: 'Register',
          finishButtonStyle: FinishButtonStyle(
            backgroundColor: Colors.black,
          ),
          skipTextButton: Text('Skip'),
          trailing: Text('Login'),
          background: [
            // width: MediaQuery.of(context).size.width, => 핸드폰의 화면크기를 자체적으로 알아오는 기능
            Image.asset('image/onboarding01.jpg', width: MediaQuery.of(context).size.width,),
            Image.asset('image/onboarding02.jpg', width: MediaQuery.of(context).size.width,),
          ],
          totalPage: 2,
          speed: 1.8,
          pageBodies: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text('Description Text 1'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text('Description Text 2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
