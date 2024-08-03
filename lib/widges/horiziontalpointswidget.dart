import 'package:flutter/material.dart';

class HorizontalPointsPainter extends CustomPainter {
  final List<Offset> points;
  final Color color;
  final double pointRadius;

  HorizontalPointsPainter({
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

class HorizontalPointsWidget extends StatelessWidget {
  final double width;
  final List<double> pointPositions;

  HorizontalPointsWidget({
    required this.width,
    required this.pointPositions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 20, // Height of the line widget
      child: CustomPaint(
        painter: HorizontalPointsPainter(
          points: pointPositions.map((pos) => Offset(pos, 10)).toList(), // 10 is half of the height (center)
        ),
      ),
    );
  }
}
