import 'package:college_campus/features/views/widgets/items.dart';
import 'package:flutter/material.dart';

class GradesPage extends StatelessWidget {
  const GradesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<GradeItem> grades = [
      GradeItem("Digital Marketing", "A+", "S2023"),
      GradeItem("Design Learning", "B", "S2023"),
      GradeItem("Software Management", "B+", "S2023"),
      GradeItem("Digital Logical Thoughts", "C", "S2023"),
      GradeItem("Artificial Intelligence", "F", "S2023"),
      GradeItem("Physics", "A+", "S2023"),
      GradeItem("Mathematics", "C+", "S2023"),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text.rich(
                    TextSpan(
                      text: 'Grades: ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                      children: [
                        TextSpan(
                          text: 'Final Grades',
                          style: TextStyle(color: Colors.purple),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Overall CGPA: 4.00\nCredits earned: 50/150",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        child: Row(
                          children: const [
                            Text(
                              "Semester",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.builder(
                      itemCount: grades.length,
                      itemBuilder: (context, index) {
                        return GradeCard(item: grades[index]);
                      },
                    ),
                  ),
                ],
              ),
              Align(alignment: Alignment.bottomCenter, child: Items()),
            ],
          ),
        ),
      ),
    );
  }
}

class GradeItem {
  final String course;
  final String grade;
  final String semester;

  GradeItem(this.course, this.grade, this.semester);
}

class GradeCard extends StatelessWidget {
  final GradeItem item;

  const GradeCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: const Color(0xFFF9F9F9),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(color: Colors.black, blurRadius: 6, offset: Offset(0, 4)),
          ],
        ),
        child: ListTile(
          title: Text(
            item.course,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          trailing: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  item.grade,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                Text(
                  item.semester,
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
