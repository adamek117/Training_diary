import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  var size;

  MyCustomContainer({
    Key? key,
    this.backgroundColor = const Color(0xFFFBCEB1),
    this.progressColor = const Color(0xFFFFFDD0),
    required this.progress,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              color: backgroundColor,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: size.height * progress,
                color: progressColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
