import 'package:flutter/material.dart';
import 'package:chef_for_you/Screens/Login/components/background.dart';
import 'package:chef_for_you/Screens/Signup/signup_screen.dart';
import 'package:chef_for_you/components/already_have_an_account_acheck.dart';
import 'package:chef_for_you/components/rounded_button.dart';
import 'package:chef_for_you/components/rounded_input_field.dart';
import 'package:chef_for_you/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

import '../../../home_page.dart';
import '../../home/home_screen.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  HomeScreen()),
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
  }
}
