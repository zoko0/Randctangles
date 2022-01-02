import 'package:flutter/material.dart';

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
    final paint = Paint()
      ..color = Colors.lime
      ..strokeWidth = 1
      ..style = PaintingStyle.fill;

    // final rect2 = Rect.fr
    final rect = Rect.fromPoints(
        Offset(size.width * 1 / 4, size.height * 1 / 4),
        Offset(size.width * 3 / 4, size.height * 3 / 4));
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
