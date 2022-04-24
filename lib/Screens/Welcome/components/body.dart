import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../widget/button_widget.dart';
import '../../Login/login_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Choose Online',
              body: 'Like the main purpose of the app is the provide a restaurant style meal in the comfort of your Home ',
              image: buildImage('assets/images/screenfour.jpeg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Order Food',
              body: 'Available right at your fingerprints',
              image: buildImage('assets/images/screenone.jpeg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Simple UI',
              body: 'For enhanced reading experience',
              image: buildImage('assets/images/screentwo.jpeg'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'High Preparations at Home',
              body: 'Start your journey, Meal Preapared by one of our certified chefs.',
              footer: ButtonWidget(
                text: 'Start Reading',
                onClicked: () => goToHome(context),
              ),
              image: buildImage('assets/images/screenfour.jpeg'),
              decoration: getPageDecoration(),
            ),
          ],
          done: const Text('Read', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white,)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: const Text('Skip',
          style: TextStyle (color: Colors.white),),

          onSkip: () => goToHome(context),
          next: const Icon(Icons.arrow_forward,
          color: Colors.white,),
          dotsDecorator: getDotDecoration(),
          onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: Theme.of(context).primaryColor,
         // dotsFlex: 0,
          //nextFlex: 0,
          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          // animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginScreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: const TextStyle(fontSize: 20),
    bodyPadding: const EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: const EdgeInsets.all(24),
        pageColor: Colors.white,
      );

/*@override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "CHEF FOR YOU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }*/
}
