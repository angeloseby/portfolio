import 'package:flutter/material.dart';
import 'package:portfolio/animations/slide_from_top_animation.dart';
import 'package:portfolio/animations/typing_text_animation.dart';
import 'package:portfolio/configs/constants.dart';
import 'package:portfolio/widgets/navigation_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: lightShade,
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            //Intro Sentence
            Positioned(
              top: screenHeight / 3,
              left: screenWidth / 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Hi there, I am ",
                      children: [
                        TextSpan(
                          text: "Angelo",
                          style: homePageTitleName,
                        ),
                      ],
                    ),
                    style: homePageTitleSentence,
                  ),
                  TypingText(
                    texts: const [
                      "Data enthusiast & creative coder.",
                      "Weaving data into powerful narratives."
                    ],
                    style: homePageTitleSentence,
                  ),
                ],
              ),
            ),
            //Horizontal Bar
            Positioned(
              bottom: screenWidth - screenWidth * 0.9,
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.050,
                color: mainShade,
              ),
            ),
            Positioned(
              top: 50,
              right: 250,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    SlideFromTop(
                      child: const NavigationBarContainer(),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "Know More ",
                      style: navBarKnowMore,
                    ),
                    const Icon(
                      Icons.arrow_drop_down_circle_sharp,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
