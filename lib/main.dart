import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Space());
  }
}

class Space extends StatelessWidget {
  const Space({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var width = screenSize.width;
    var height = screenSize.height;
    double painterHeight = screenSize.height;
    double painterWidth = screenSize.width;

    if (width > height) {
      painterWidth = height;
    } else {
      painterHeight = width;
    }

    return Center(
      child: Container(
        color: Colors.black12,
        child: CustomPaint(
          painter: RectanglePainter(),
        ),
        width: painterWidth - 100,
        height: painterHeight - 100,
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    final paint = randomColorPaint();
    final rect = Rect.fromPoints(const Offset(0, 0),
        Offset(size.width, size.height));
    canvas.drawRect(rect, paint);

    for (var i = 0; i < 20; i++ ) {
      drawRandomRectangle(canvas, size);
    }
  }

  Paint randomColorPaint() {
    var randomColor = Color.fromRGBO(Random().nextInt(256),
        Random().nextInt(256), Random().nextInt(256), 0.9);

    return Paint()
      ..color = randomColor
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;
  }

  void drawRandomRectangle(Canvas canvas, Size size) {
    var randomSize1 = Random().nextInt(size.width.toInt());
    var randomSize = Random().nextInt(size.width.toInt());
    final paint = randomColorPaint();
    final rect = Rect.fromPoints(Offset(randomSize1.toDouble(), randomSize1.toDouble()),
        Offset(randomSize.toDouble(), randomSize.toDouble()));
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
