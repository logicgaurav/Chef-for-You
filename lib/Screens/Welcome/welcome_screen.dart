import 'package:flutter/material.dart';
import 'components/body.dart';

class WelcomeScreen extends StatelessWidget {
  static final String title = 'Onboarding Example';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Body(),
  );
}
