import 'dart:async';
import 'package:demoapp/main.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MainCard extends StatelessWidget {
  MainCard({
    super.key,
    required this.onIconPress,
    required this.circularProgressIcon,
  });

  double progressPercent = 0.0;
  Widget circularProgressIcon;

  void Function() onIconPress;
  @override
  Widget build(BuildContext context) {
    Timer clockTimer = Timer.periodic(const Duration(seconds: 20), (timer) {
      progressPercent;
    });

    return Container(
      height: MediaQuery.of(context).size.height / 4,
      child: Card(
        margin: const EdgeInsets.only(top: 8, bottom: 10),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 30,
              backgroundColor: kBackgroundColor.withOpacity(0.3),
              progressColor: kBackgroundColor,
              percent: progressPercent,
              radius: 30,
              center: IconButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: onIconPress,
                  icon: circularProgressIcon),
            ),
            const SizedBox(width: 32),
            const Center(
              child: Text(
                '0',
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 116, 116),
                  fontSize: 120,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const Text(
              "Hours",
              style: TextStyle(fontSize: 16),
            ),
            const IconButton(
              onPressed: null,
              icon: Icon(
                Icons.add_circle_rounded,
                color: kBackgroundColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
