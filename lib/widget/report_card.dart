import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({
    required this.onAddReport,
    super.key,
    required this.header,
    required this.reportIndex,
    this.padding = const EdgeInsets.all(0),
  });

 final void Function() onAddReport;
 
  final int reportIndex;
  final String header;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        margin: padding,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  header,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 117, 116, 116),
                  ),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 65,
                  ),
                   Text(
                    reportIndex.toString(),
                    style: const TextStyle(
                      fontSize: 60,
                      color: Color.fromARGB(255, 117, 116, 116),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: onAddReport,
                        child: const Icon(
                          Icons.add_circle,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      GestureDetector(
                        child: const Icon(
                          Icons.remove_circle,
                          color: Color.fromARGB(255, 117, 116, 116),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
