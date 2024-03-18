import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/animations/slide_from_bottom_text_animation.dart';
import 'package:portfolio/animations/slide_from_right_animation.dart';
import 'package:portfolio/configs/constants.dart';
import 'package:portfolio/pages/project_page.dart';

class NavigationBarContainer extends StatefulWidget {
  const NavigationBarContainer({super.key});

  @override
  State<NavigationBarContainer> createState() => _NavigationBarContainerState();
}

class _NavigationBarContainerState extends State<NavigationBarContainer> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: mainShade,
      height: screenWidth,
      width: screenHeight,
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
                    style: navBarClose,
                  ),
                  const Icon(
                    Icons.close_rounded,
                    color: subShade,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: screenHeight / 3.5,
            left: screenWidth / 5,
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      SlideFromRight(
                        child: const ProjectPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: 400,
                    height: 100,
                    child: const SlideFromBottomText(
                      text: "Projects",
                      delay: 500,
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: 100,
                  child: const SlideFromBottomText(
                    text: "Education",
                    delay: 600,
                  ),
                ),
                Container(
                  width: 400,
                  height: 100,
                  child: const SlideFromBottomText(
                    text: "Resume",
                    delay: 700,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
