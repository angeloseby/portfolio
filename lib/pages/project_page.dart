import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/animations/slide_from_bottom_animation.dart';
import 'package:portfolio/animations/slide_from_bottom_text_animation.dart';
import 'package:portfolio/configs/constants.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      color: lightShade,
      child: Stack(
        children: [
          Positioned(
            top: 50,
            right: 250,
            child: TextButton(
              style: TextButton.styleFrom(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  Text(
                    "Close ",
                    style: navBarClose.copyWith(color: subShade),
                  ),
                  const Icon(
                    Icons.close_rounded,
                    color: mainShade,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 3.5,
            left: screenWidth / 5,
            child: Container(
              width: 400,
              height: 100,
              child: const SlideFromBottomText(
                text: "Projects",
                delay: 700,
                normalColor: mainShade,
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 2,
            left: screenWidth / 5,
            child: Row(
              children: [
                SlideUpAnimation(),
                const SizedBox(width: 20),
                SlideUpAnimation(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
