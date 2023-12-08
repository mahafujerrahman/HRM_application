import 'package:flutter/material.dart';
import 'package:hrm_application/All%20Features/FeatureView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<Map<String, dynamic>> features = [
    {'icon': Icons.calendar_month_sharp, 'name': 'Attendance'},
    {'icon': Icons.person_pin_rounded, 'name': 'Contract'},
    {'icon': Icons.exit_to_app, 'name': 'Request'},
    {'icon': Icons.receipt_long, 'name': 'Pay Slip'},
    {'icon': Icons.payments, 'name': 'Ncash'},
    {'icon': Icons.ad_units, 'name': 'Advice'},

    {'icon': Icons.calendar_month_sharp, 'name': 'Attendance'},
    {'icon': Icons.person_pin_rounded, 'name': 'Contract'},
    {'icon': Icons.exit_to_app, 'name': 'Request'},
    {'icon': Icons.receipt_long, 'name': 'Pay Slip'},
    {'icon': Icons.payments, 'name': 'Ncash'},
    {'icon': Icons.ad_units, 'name': 'Advice'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add_outlined),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Good Morning, Dani",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                            Text(
                              "Let's be productive today!",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: ClipOval(
                      child: Image.asset(
                        'images/2IMG_20220927_001729.jpg',
                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

              if (_currentIndex == 0)
                FeatureView(features: features), ///  FeatureView show
            ],
          ),
        ),
      ),
    );
  }
}