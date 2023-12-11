import 'package:flutter/material.dart';
import 'package:hrm_application/All%20Features/AttendanceCard.dart';
import 'package:hrm_application/All%20Features/PaySlip.dart';
import 'package:hrm_application/HomeScreen.dart';
import 'package:hrm_application/Login_Screen.dart';

class FeatureView extends StatelessWidget {
  final List<Map<String, dynamic>> features;

  const FeatureView({Key? key, required this.features}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        height: 634,
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Features",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 245),
                            Container(
                              width: 80,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: const Text(
                                  "See All",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.deepPurple,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Container(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: features.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigate to different pages based on the feature name
                        if (features[index]['name'] == 'Attendance') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LogInScreen(),),
                          );
                        } else if (features[index]['name'] == 'Contract') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaySlip(),
                            ),
                          );
                        }

                        else if (features[index]['name'] == 'Pay Slip') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaySlip(),
                            ),
                          );
                        }

                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              padding: const EdgeInsets.all(10),
                              height: 60,
                              width: 60,
                              child: Icon(features[index]['icon'],
                                  size: 30, color: Colors.deepPurple),
                            ),
                            SizedBox(height: 5),
                            Text(
                              features[index]['name'],
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Overview",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 210),
                            Container(
                              width: 110,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: EdgeInsets.only(left: 10, top: 5),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Aug 2023",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.deepPurple,
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.deepPurple,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 130,
                        padding: EdgeInsets.only(left: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Attendance",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "100%",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          color: Colors.black12,
                          child: const Divider(
                            height: 50,
                            thickness: 1,
                            indent: 1,
                            endIndent: 1,
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        padding: EdgeInsets.all(8),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Time Worked",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "41h 23m",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Container(
                          color: Colors.black12,
                          child: const Divider(
                            height: 50,
                            thickness: 1,
                            indent: 1,
                            endIndent: 1,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Overtime",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "0m",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 40),
              const AttendanceCard(), /// AttendanceCard
            ],
          ),
        ),
      ),
    );
  }
}

