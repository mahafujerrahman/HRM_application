import 'package:flutter/material.dart';
import 'package:hrm_application/HomeScreen.dart';

class Attendance extends StatelessWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 35),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                  ),
                ),
                const Text(
                  "Attendance",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.filter_alt_sharp, color: Colors.white, size: 35),
                ),
              ],
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: Colors.purple,
                ),
                padding: EdgeInsets.all(10),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You're present 100% in August.Well done!",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView.builder(
                  itemCount: 30, // Show three list view items
                  itemBuilder: (context, index) {
                    // Add a SizedBox for the vertical space between items
                    return Column(
                      children: [
                        CustomListItem(),
                        SizedBox(height: 5), // Adjust the height between items
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.black12,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurple,
                ),
                padding: EdgeInsets.all(5),
                child: const Icon(Icons.calculate_sharp, color: Colors.white, size: 30),
              ),
            ),
            SizedBox(width:10),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("20 Dec 2023", style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold)),
                Text("08.00 AM - 06.00 PM", style: TextStyle(color: Colors.blueGrey,fontSize: 20)),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.greenAccent,
                ),
                padding: EdgeInsets.all(8),
                child: const Text("On Time", style: TextStyle(fontSize: 12,color: Colors.white,fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}