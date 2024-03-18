import 'package:flutter/material.dart';
import 'package:portfolio/configs/constants.dart';

class SlideUpAnimation extends StatefulWidget {
  @override
  _SlideUpAnimationState createState() => _SlideUpAnimationState();
}

class _SlideUpAnimationState extends State<SlideUpAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animation = Tween<double>(begin: 0, end: 200).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            height: _animation.value,
            width: 400,
            decoration: BoxDecoration(
                color: lightShade,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(
                  color: mainShade,
                  width: 2.0,
                )),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
