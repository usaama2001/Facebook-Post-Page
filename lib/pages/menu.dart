import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eight-Sided Card'),
      ),
      body: Center(
        child: EightSidedCard(),
      ),
    );
  }
}

class EightSidedCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      child: ClipPath(
        clipper: _EightSidedCardClipper(),
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}

class _EightSidedCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double width = size.width;
    final double height = size.height;

    final path = Path()
      ..moveTo(width * 0.2, 0)
      ..lineTo(width * 0.8, 0)
      ..lineTo(width, height * 0.2)
      ..lineTo(width, height * 0.8)
      ..lineTo(width * 0.8, height)
      ..lineTo(width * 0.2, height)
      ..lineTo(0, height * 0.8)
      ..lineTo(0, height * 0.2)
      ..close();
    return path;
  }
  @override
  bool shouldReclip(_EightSidedCardClipper oldClipper) => false;
}