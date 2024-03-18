import 'package:flutter/material.dart';
import 'package:portfolio/configs/constants.dart';

class SlideFromBottomText extends StatefulWidget {
  final String text;
  final int delay;
  const SlideFromBottomText(
      {super.key, required this.text, required this.delay});

  @override
  _SlideFromBottomTextState createState() => _SlideFromBottomTextState();
}

class _SlideFromBottomTextState extends State<SlideFromBottomText> {
  bool _isVisible = false;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    // Trigger animation after a delay
    Future.delayed(Duration(milliseconds: widget.delay), () {
      setState(() {
        _isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isHovered = false;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          height: _isVisible ? 0.0 : 100.0,
          alignment: _isVisible ? Alignment.topLeft : const Alignment(-1, 10),
          child: Text(
            widget.text,
            style: navBarTitleText.copyWith(
              color: _isHovered ? subShade : lightShade,
            ),
          ),
        ),
      ),
    );
  }
}
