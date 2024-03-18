import 'package:flutter/material.dart';

class SlideFromRight extends PageRouteBuilder {
  final Widget child;

  SlideFromRight({required this.child})
      : super(
          transitionDuration: const Duration(seconds: 1),
          opaque: false,
          pageBuilder: (context, animation, secondaryAnimation) =>
              SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(1, 0), // Start from top of screen
              end: Offset.zero,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.ease,
              ),
            ), // Cast animation to Animation<Offset>
            child: child,
          ),
        );

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1, 0), // Start from top of screen
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.ease,
        ),
      ), // Use Tween<Offset> with animation
      child: child,
    );
  }
}
