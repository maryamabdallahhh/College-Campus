import 'package:college_campus/features/views/courses.dart';
import 'package:college_campus/features/views/home_page.dart';
import 'package:college_campus/features/views/result.dart';
import 'package:college_campus/features/views/schedule_page.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'home': (context) => HomePage(),
  'schedule': (context) => SchedulePage(),
  'result': (context) => GradesPage(),
  'courses': (context) => CourseListPage(),
};
