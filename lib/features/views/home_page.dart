import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> events = [
    {
      'title': 'FBISE',
      'subtitle':
          'The Federal Board of Intermediate and Secondary Education (FBISE) has officially announced the date for the results of the Secondary School Certificate (SSC) Part I & II 1st Annual Examinations.',
      'date': 'May 01',
    },
    {
      'title': 'Gaza',
      'subtitle':
          'Pakistan Medical and Dental Council (PMDC) has permitted medical/dental students from Gaza to complete their studies in Pakistan.',
      'date': 'June 07',
    },
    {
      'title': 'LUMS',
      'subtitle': 'LUMS recently collaborated with the mediation of...',
      'date': 'May 01',
    },
  ];
  final List<Map<String, String>> news = [
    {
      'title': 'IDP Study Abroad Expo',
      'subtitle': 'Islamabad',
      'date': 'Wed, 28 Feb 2024',
    },
    {
      'title': 'Pathways to Development Conference',
      'subtitle': 'Lahore',
      'date': 'Fri, 19 Apr 2024',
    },
    {
      'title': 'IELTS',
      'subtitle': 'Ielts recently collaborated with the mediation of...',
      'date': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Home',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today\'s Classes',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed("schedule");
                      },
                      child: Row(
                        children: [
                          Text(
                            'Open schedule',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 16,
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                            color: Colors.purple,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Card(
                  color: Colors.white12,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Digital Thinking',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          '08:00 - 10:00 • Main auditorium',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Main Mahnoor',
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),

                TabBar(
                  tabs: [Tab(text: 'News'), Tab(text: 'Events')],
                  labelColor: Colors.purple,
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,

                  indicatorColor: Colors.purple,
                ),
                SizedBox(
                  height: 400,
                  child: TabBarView(
                    children: [
                      _buildTabContent(events),
                      _buildTabContent(news),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("home");
                },
                icon: Icon(Icons.home),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("courses");
                },
                icon: Icon(Icons.book),
              ),
              label: 'Courses',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("schedule");
                },
                icon: Icon(Icons.schedule),
              ),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("result");
                },
                icon: Icon(Icons.bar_chart),
              ),
              label: 'Result',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("profile");
                },
                icon: Icon(Icons.person),
              ),
              label: 'Profile',
            ),
          ],
          currentIndex: 0,
          onTap: (index) {},
        ),
      ),
    );
  }

  Widget _buildTabContent(List<Map<String, String>> items) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white12,
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  items[index]['title']!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  items[index]['subtitle']!,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                SizedBox(height: 5),
                Text(
                  items[index]['date']!,
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
