import 'package:flutter/material.dart';
import 'package:portfolio/configs/constants.dart';
import 'package:portfolio/widgets/bottom_driver.dart';

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
          const Positioned(
            bottom: 0,
            left: 0,
            child: BottomRectangleDriver(),
          )
        ],
      ),
    );
  }
}
