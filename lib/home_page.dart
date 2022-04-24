import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

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
          SizedBox(
            height: 200.0,
            width: 300,
            child: Carousel(
              dotSize: 6.0,
              dotSpacing: 15.0,
              dotPosition: DotPosition.bottomCenter,
              images: [
                Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                Image.asset('assets/images/logo.png', fit: BoxFit.cover),
                Image.asset('assets/images/logo.png', fit: BoxFit.cover),
              ],
            ),
          )
        ],
      )),
    );
  }
}
