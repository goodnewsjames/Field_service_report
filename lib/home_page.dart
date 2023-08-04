import 'package:demoapp/main.dart';
import 'package:demoapp/new_report.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(color: kBackgroundColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 6, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PopupMenuButton(
                      padding: const EdgeInsets.all(1000),
                      child: const Icon(
                        size: 25,
                        Icons.more_vert,
                        color: Colors.black,
                      ),
                      itemBuilder: (context) {
                        return <PopupMenuEntry>[
                          const PopupMenuItem(
                            child: Text('Set a goal'),
                          ),
                          const PopupMenuItem(
                            child: Text('Settings'),
                          ),
                          PopupMenuItem(
                            child: DropdownButton<String>(
                              isExpanded: true,
                              borderRadius: BorderRadius.zero,
                              elevation: 0,
                              hint: const Text(
                                'Backup and restore',
                                style: TextStyle(color: Colors.black),
                              ),
                              icon: const Icon(Icons.arrow_right_sharp),
                              onChanged: (value) {
                                return;
                              },
                              underline: Container(),
                              items: const <DropdownMenuItem<String>>[
                                DropdownMenuItem<String>(
                                    value: 'Create a backup',
                                    child: Text('Create a backup')),
                                DropdownMenuItem<String>(
                                    value: 'Restore a Backup',
                                    child: Text('Restore a backup'))
                              ],
                            ),
                          ),
                        ];
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        "Let's go in service!",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: const NewReport(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: kBackgroundColor,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Report',
            icon: Icon(
              Icons.assignment_outlined,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Calls',
            icon: Icon(
              Icons.forum_outlined,
            ),
          ),
        ],
      ),
    );
  }
}
