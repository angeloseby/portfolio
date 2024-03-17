import 'package:flutter/material.dart';
import 'package:portfolio/configs/constants.dart';

class BottomRectangleDriver extends StatefulWidget {
  const BottomRectangleDriver({super.key});

  @override
  State<BottomRectangleDriver> createState() => _BottomRectangleDriverState();
}

class _BottomRectangleDriverState extends State<BottomRectangleDriver>
    with SingleTickerProviderStateMixin {
  double screenHeight = 400;
  double screenWidth = 400;

  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          screenHeight = 20;
          screenWidth = 200;
        });
        // Start the animation after state update
        _animationController?.forward();
      },
      child: AnimatedContainer(
        duration: _animationController!.duration,
        curve: Curves.ease,
        child: Container(
          color: subShade,
          height: Tween<double>(begin: screenHeight, end: 20.0)
              .animate(_animationController!)
              .value,
          width: Tween<double>(begin: screenWidth, end: 200.0)
              .animate(_animationController!)
              .value,
        ),
      ),
    );
  }
}
