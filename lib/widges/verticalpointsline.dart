import 'package:flutter/material.dart';

class VerticalPointsPainter extends CustomPainter {
  final List<Offset> points;
  final Color color;
  final double pointRadius;

  VerticalPointsPainter({
    required this.points,
    this.color = Colors.blue,
    this.pointRadius = 2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final pointPaint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    for (var point in points) {
      canvas.drawCircle(point, pointRadius, pointPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}


class VerticalPointsWidget extends StatelessWidget {
  final double height;
  final List<double> pointPositions;

  VerticalPointsWidget({
    required this.height,
    required this.pointPositions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: 20, // Width of the line widget
      child: CustomPaint(
        painter: VerticalPointsPainter(
          points: pointPositions.map((pos) => Offset(10, pos)).toList(), // 25 is half of the width (center)
        ),
      ),
    );
  }
}
