import 'package:flutter/material.dart';

class VerticalLinePainter extends CustomPainter {
  final Color lineColor;
  final double lineWidth;

  VerticalLinePainter({
    this.lineColor = Colors.blue,
    this.lineWidth = 2.0,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final linePaint = Paint()
      ..color = lineColor
      ..strokeWidth = lineWidth
      ..style = PaintingStyle.stroke;

    final start = Offset(size.width / 2, 0);
    final end = Offset(size.width / 2, size.height);

    canvas.drawLine(start, end, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}


class VerticalLineWidget extends StatelessWidget {
  final double height;

  VerticalLineWidget({required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 50, // Width of the line widget
      child: CustomPaint(
        painter: VerticalLinePainter(),
      ),
    );
  }
}
