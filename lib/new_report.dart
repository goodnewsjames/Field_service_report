

import 'package:demoapp/main.dart';
import 'package:demoapp/widget/current_date.dart';
import 'package:demoapp/widget/goal_card.dart';
import 'package:demoapp/widget/main_card.dart';
import 'package:demoapp/widget/report_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewReport extends StatefulWidget {
  const NewReport({super.key});

  @override
  State<NewReport> createState() => _NewReportState();
}

class _NewReportState extends State<NewReport> {
  DateTime? currentDate = DateTime.now();

  int reportIndex = 0;

  void onClickMore() {
    showDialog(
        context: context,
        builder: (BuildContext builder) {
          return SizedBox(
            child: ListBody(children: [
              TextButton(
                onPressed: () {},
                child: Text('Set a goal'),
              ),
            ]),
          );
        });
  }

  void onSelectDate() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext builder) {
        return SizedBox(
          height: 200,
          child: CupertinoDatePicker(
            initialDateTime: DateTime.now(),
            onDateTimeChanged: (DateTime newdate) {
              setState(() {
                currentDate = newdate;
              });
            },
            use24hFormat: true,
            maximumDate: DateTime(3000, 12, 30),
            minimumYear: 10,
            maximumYear: 3000,
            mode: CupertinoDatePickerMode.date,
          ),
        );
      },
    );
  }

  Widget circularProgressIcon = const Icon(
    Icons.timer,
    size: 25,
    color: kBackgroundColor,
  );

  void onTimerIconPress() {
    setState(() {
      circularProgressIcon = const Text(
        '0.00',
        style: TextStyle(
          fontSize: 10,
          color: kBackgroundColor,
        ),
      );
    });
  }

  void onClickAdd() {
    setState(() {
      reportIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
   

    final formartedDate = DateFormat('EEEE, d MMMM y').format(currentDate!);
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CurrentDate(selectDate: onSelectDate, todaysDate: formartedDate),
          MainCard(
            onIconPress: onTimerIconPress,
            circularProgressIcon: circularProgressIcon,
          ),
          Row(
            children: [
              ReportCard(
                reportIndex: reportIndex,
                onAddReport: onClickAdd,
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                header: 'Placements',
              ),
              ReportCard(
                onAddReport: onClickAdd,
                reportIndex: reportIndex,
                header: 'Video Showings',
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              )
            ],
          ),
          const Row(
            children: [
              GoalCard(
                label: 'Set a goal',
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
              ),
              GoalCard(
                label: 'Add a Visit',
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
