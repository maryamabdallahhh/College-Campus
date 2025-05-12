import 'package:college_campus/features/views/widgets/items.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: const Scaffold(
        body: Stack(
          children: [
            Column(children: []),
            Align(alignment: Alignment.bottomCenter, child: Items()),
          ],
        ),
      ),
    );
  }
}
