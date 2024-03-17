import 'package:flutter/material.dart';

class TypingText extends StatefulWidget {
  final List<String> texts;
  final TextStyle style;

  const TypingText({Key? key, required this.texts, required this.style})
      : super(key: key);

  @override
  _TypingTextState createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText>
    with SingleTickerProviderStateMixin {
  late Animation<int> _charCount;
  late AnimationController _controller;
  int currentStringIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000), // Adjust animation duration
    );

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(const Duration(milliseconds: 1000), () {
          currentStringIndex =
              ((currentStringIndex + 1) % widget.texts.length).toInt();
          _charCount =
              IntTween(begin: 0, end: widget.texts[currentStringIndex].length)
                  .animate(_controller);
          _controller.reset();
          _controller.forward();
        });
      }
    });

    _charCount =
        IntTween(begin: 0, end: widget.texts.length).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _charCount,
      builder: (context, child) => Text(
        widget.texts[currentStringIndex].substring(0, _charCount.value),
        style: widget.style, // Adjust text style
      ),
    );
  }
}
