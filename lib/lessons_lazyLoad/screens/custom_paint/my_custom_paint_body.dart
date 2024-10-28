import 'dart:math';

import 'package:flutter/material.dart';

class MyCustomPaintBody extends StatelessWidget {
  const MyCustomPaintBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: 300,
        height: 300,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CustomPaint(
              painter: MyPainter(),
            ),
            const Center(
                child: Text(
              '70%',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
              ),
            )),
          ],
        ),
      ),
    ));
  }
}

class MyPainter extends CustomPainter {
  final double percent = 70;
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.fill;
    canvas.drawOval(Offset.zero & size, paint);
    final filedPaint = Paint()
      ..color = const Color.fromARGB(255, 241, 245, 17)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;
    canvas.drawArc(
      Offset(10, 10) & Size(size.width - 20, size.height - 20),
      (2 * pi) * percent / 100 - (pi / 2),
      2 * pi * (100 - percent) / 100,
      false,
      filedPaint,
    );

    final feelPaint = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;
    canvas.drawArc(
      Offset(10, 10) & Size(size.width - 20, size.height - 20),
      -pi / 2,
      (2 * pi) * percent / 100,
      false,
      feelPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
