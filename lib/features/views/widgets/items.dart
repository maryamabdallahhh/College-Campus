import 'package:college_campus/features/views/widgets/itemicon.dart';
import 'package:flutter/material.dart';

class Items extends StatefulWidget {
  const Items({super.key});

  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ItemIcon(
              data: 'Home',
              icon: Icons.home_outlined,
              onPressed: () {
                Navigator.of(context).pushNamed("home");
              },
            ),
            ItemIcon(
              data: 'Courses',
              icon: Icons.folder_open_rounded,
              onPressed: () {
                Navigator.of(context).pushNamed("courses");
              },
            ),
            ItemIcon(
              data: 'schedule',
              icon: Icons.calendar_month_outlined,
              onPressed: () {
                Navigator.of(context).pushNamed("schedule");
              },
            ),
            ItemIcon(
              data: 'Result',
              icon: Icons.grade_outlined,
              onPressed: () {
                Navigator.of(context).pushNamed("result");
              },
            ),
            ItemIcon(
              data: 'Profile',
              icon: Icons.person_2_outlined,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
