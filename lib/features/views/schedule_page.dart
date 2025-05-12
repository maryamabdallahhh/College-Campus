import 'package:college_campus/features/views/widgets/items.dart';
import 'package:flutter/material.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Schedule',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.notifications_none, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Text(
                        '06',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mon',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'July, 2024',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        final days = ['S', 'S', 'M', 'T', 'W', 'T', 'F'];
                        final dates = [
                          '04',
                          '05',
                          '06',
                          '07',
                          '08',
                          '09',
                          '10',
                        ];
                        bool isSelected = index == 2;

                        return Padding(
                          padding: const EdgeInsets.only(right: 12),
                          child: Column(
                            children: [
                              Text(
                                days[index],
                                style: TextStyle(
                                  color:
                                      isSelected
                                          ? Colors.white
                                          : Colors.white70,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 4),
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      isSelected
                                          ? Colors.purple
                                          : Colors.transparent,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 6,
                                ),
                                child: Text(
                                  dates[index],
                                  style: TextStyle(
                                    color:
                                        isSelected
                                            ? Colors.white
                                            : Colors.white70,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.white),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        'Time',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(width: 55),
                      const Text(
                        'Courses',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // const Divider(color: Colors.white24),
                  const SizedBox(height: 10),
                  Expanded(
                    child: ListView(
                      children: const [
                        TimeSlot(
                          time: '11:35\n13:05',
                          course: CourseCard(
                            title: 'Computer Science',
                            subtitle: 'Lecture 2: Data management',
                            room: 'Room 2 - 124',
                            teacher: 'Mam Laiba Khalid',
                            bgColor: Color(0xFFB0EACD),
                            iconColor: Colors.black,
                          ),
                        ),
                        TimeSlot(
                          time: '13:15\n14:45',
                          course: CourseCard(
                            title: 'Digital Marketing',
                            subtitle: 'Lecture 3: Shopify Creation',
                            room: 'Room 3A - 04',
                            teacher: 'Mam Hira',
                            bgColor: Color(0xFFF8FF95),
                            iconColor: Colors.red,
                          ),
                        ),
                        TimeSlot(
                          time: '15:10\n16:40',
                          course: CourseCard(
                            title: 'Digital Marketing',
                            subtitle: 'Lecture 3: Shopify Creation',
                            room: 'Room 7B - B1',
                            teacher: 'Unknown',
                            bgColor: Color(0xFFC9D4F8),
                            iconColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(alignment: Alignment.bottomCenter, child: Items()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeSlot extends StatelessWidget {
  final String time;
  final Widget course;

  const TimeSlot({super.key, required this.time, required this.course});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 60,
            child: Text(
              time,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(child: course),
        ],
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String room;
  final String teacher;
  final Color bgColor;
  final Color iconColor;

  const CourseCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.room,
    required this.teacher,
    required this.bgColor,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Icon(Icons.more_vert, color: iconColor),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.black87, fontSize: 13),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: 16,
                color: Colors.black87,
              ),
              const SizedBox(width: 4),
              Text(room, style: const TextStyle(color: Colors.black87)),
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const Icon(Icons.person_outline, size: 16, color: Colors.black87),
              const SizedBox(width: 4),
              Text(teacher, style: const TextStyle(color: Colors.black87)),
            ],
          ),
        ],
      ),
    );
  }
}
