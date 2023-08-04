
import 'package:flutter/material.dart';

class CurrentDate extends StatelessWidget {
  CurrentDate({
    super.key,
    required this.todaysDate,
    required this.selectDate,
  });
final  String todaysDate;

final  void Function() selectDate;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:
          const ButtonStyle(padding: MaterialStatePropertyAll(EdgeInsets.zero)),
      onPressed: selectDate,
      child: Text(
        todaysDate,
        textAlign: TextAlign.left,
        style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
