import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:shop_app/presentation/theme/theme.dart';

class PageIndicator extends HookWidget {
   const PageIndicator({
    Key? key,
    this.color = AppColors.violetAccent,
    this.selectedColor = AppColors.violet,
    this.indicatorLength = 1,
    this.indicatorSpace = 10.0,
    this.indicatorSize = 12.0,
    this.reverse = false,
    this.currentPage = 0.0,
  }) : super(key: key);

  final Color color;

  final Color selectedColor;

  final int indicatorLength;

  final double indicatorSpace;

  final double indicatorSize;

  final bool reverse;

  final double currentPage;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: RotatedBox(
        quarterTurns: reverse ? 2 : 0,
        child: CustomPaint(
          size: Size.fromHeight(indicatorSize),
          child: Container(height: indicatorSize),
          painter: CirclePainter(
            color: color,
            selectedColor: selectedColor,
            count: indicatorLength,
            currentPage: currentPage,
            padding: indicatorSpace,
            radius: indicatorSize / 2,
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  double currentPage;
  int count;
  Color color;
  Color selectedColor;
  double radius;
  double padding;

  late Paint _circlePaint;
  late Paint _selectedPaint;

  CirclePainter({
    this.currentPage = 0.0,
    this.count = 0,
    this.color = Colors.white,
    this.selectedColor = Colors.grey,
    this.radius = 12.0,
    this.padding = 5.0,
  }) {
    _circlePaint = Paint();
    _circlePaint.color = color;

    _selectedPaint = Paint();
    _selectedPaint.color = selectedColor;
  }

  double get _totalWidth => count * radius * 2 + padding * (count - 1);

  @override
  void paint(Canvas canvas, Size size) {
    final centerWidth = size.width / 2;
    final startX = centerWidth - _totalWidth / 2;

    for (int i = 0; i < count; i++) {
      final x = startX + i * (radius * 2 + padding) + radius;
      canvas.drawCircle(Offset(x, radius), radius, _circlePaint);
    }

    final selectedX = startX + currentPage * (radius * 2 + padding) + radius;
    canvas.drawCircle(Offset(selectedX, radius), radius, _selectedPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
