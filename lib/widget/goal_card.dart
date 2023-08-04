import 'package:demoapp/main.dart';
import 'package:flutter/material.dart';

class GoalCard extends StatelessWidget {
  const GoalCard(
      {super.key, required this.label, this.padding = const EdgeInsets.all(0)});
  final EdgeInsetsGeometry padding;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Card(
          margin: padding,
          elevation: 8,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: SizedBox(
            height: MediaQuery.of(context).size.height /6,
            child: Center(
              child: Text(
                label,
                style: const TextStyle(
                  color: kBackgroundColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
