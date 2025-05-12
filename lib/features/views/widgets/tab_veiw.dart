import 'package:college_campus/features/views/widgets/events.dart';
import 'package:college_campus/features/views/widgets/news.dart';
import 'package:flutter/material.dart';

class TabVeiw extends StatelessWidget {
  const TabVeiw({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [Tab(text: 'News'), Tab(text: 'Events')]),
        ),
        body: const TabBarView(children: [News(), Events()]),
      ),
    );
  }
}
