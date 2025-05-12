import 'package:college_campus/features/views/widgets/items.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CourseListPage());
  }
}

class CourseListPage extends StatelessWidget {
  @override
  CourseListPage({super.key});
  final List<String> courses = [
    'Digital Marketing',
    'Design Learning',
    'Artificial Intelligence',
    'Software Management',
    'Digital Logical Thoughts',
    'Web 3.0',
    'Calculus',
    'Physics',
    'Mathematics',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Courses',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                filled: true,
                fillColor: Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white12,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text(
                      courses[index],
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    trailing: Icon(Icons.chevron_right, color: Colors.white),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
