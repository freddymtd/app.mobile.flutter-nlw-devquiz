import 'package:flutter/material.dart';

import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';

class ChartWidget extends StatefulWidget {
  final double valuePorcent;

  const ChartWidget({
    Key? key,
    required this.valuePorcent,
  }) : super(key: key);
  @override
  State<ChartWidget> createState() => _ChartWidgetState();
}

class _ChartWidgetState extends State<ChartWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  void initAnimation() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    _animation = Tween<double>(begin: 0.0, end: widget.valuePorcent)
        .animate(_controller);
    _controller.forward();
  }

  @override
  void initState() {
    initAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, _) => Container(
        width: 80,
        height: 80,
        child: Stack(
          children: [
            Center(
              child: Container(
                height: 80,
                width: 80,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: _animation.value,
                  backgroundColor: AppColors.chartSecondary,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                ),
              ),
            ),
            Center(
                child: Text(
              "${(_animation.value * 100).toStringAsFixed(0)}%",
              style: AppTextStyles.heading,
            ))
          ],
        ),
      ),
    );
  }
}
