import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Finding App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/user0.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'Utsav Hingar',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Skills: Flutter, Dart, UI/UX Design',
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'As a skilled Flutter developer, I specialize in creating cross-platform mobile applications with a focus on intuitive user interfaces and smooth performance. With a strong foundation in Dart and UI/UX design, I have a proven track record of delivering high-quality apps that meet client requirements and enhance user experiences.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),
            Text(
              'Applied Jobs:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Widget to display a list of applied jobs
            // Replace this with your own implementation
            ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    'Software Engineer',
                    style: TextStyle(fontSize: 16),
                  ),
                  subtitle: Text(
                    'Google',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  trailing: Icon(Icons.chevron_right),
                );
              },
            ),
            SizedBox(height: 20),
            Text(
              'My Job Application Stats:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // Widget to display job application statistics
            // Replace this with your own implementation
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildStatsItem('Total Jobs Applied', '10'),
                buildStatsItem('Pending Applications', '2'),
                buildStatsItem('Accepted Applications', '5'),
                buildStatsItem('Rejected Applications', '3'),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2, // Current tab index (Profile)
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
          ),
        ],
        onTap: (index) {
          // Handle bottom navigation bar item taps here
          // Replace this with your own implementation
          if (index == 0) {
            // Navigate to Home page
          } else if (index == 1) {
            // Navigate to Notifications page
          } else if (index == 2) {
            // Stay on Profile page
          }
        },
      ),
    );
  }

  Widget buildStatsItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
