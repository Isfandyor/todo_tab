import 'package:flutter/material.dart';
import 'package:practice_home/views/widgets/tab_first.dart';
import 'package:practice_home/views/widgets/tab_second.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
          child: const Column(
        children: [
          TabBar(
              labelPadding: EdgeInsets.all(20),
              indicatorWeight: 5,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Text(
                  "TO DO",
                ),
                Text(
                  "NOTES",
                ),
              ]),
          Expanded(
            child: TabBarView(children: [
              TabFirst(),
              TabSecond(),
            ]),
          ),
        ],
      )),
    );
  }
}
