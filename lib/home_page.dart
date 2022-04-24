import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Slider',
      home: MySlider(),
    );
  }
}

class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chef For you'),
      ),
      body: Center(
          child: ListView(
        children: [
          GFCarousel(height: 200, items: [
            Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            Image.asset('assets/images/logo.png', fit: BoxFit.cover),
            Image.asset('assets/images/logo.png', fit: BoxFit.cover),
          ])
        ],
      )),
    );
  }
}
