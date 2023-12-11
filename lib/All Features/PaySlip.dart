import 'package:flutter/material.dart';
import 'package:hrm_application/HomeScreen.dart';

class PaySlip extends StatelessWidget {
  const PaySlip({Key? key}) : super(key: key);

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
                          builder: (context) => HomeScreen(),),
                      );
                    },
                  ),
                ),
                Text("Pay Slip", style: TextStyle(color: Colors.white,
                    fontSize: 30,fontWeight: FontWeight.bold)),
                Padding(
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
                height: 730,
                width: 500,
                color: Colors.white,
                padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), // Set border radius if needed
                  ),
                  child: Column(
                    children: [
                      /// Month Container
                      Container(
                        decoration:  const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.deepPurple,
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "August 2023",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      // Gross pay details
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Gross pay"),
                            Text("28.000"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("5 deductions"),
                            Text("-2.000"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Net Pay"),
                            Text("26.000"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      const Divider(
                        color: Colors.black12,
                        height: 1,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.download,
                                    color: Colors.deepPurple,size: 25),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Text(
                                      "View Pay Slip",
                                      style: TextStyle(color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(Icons.arrow_forward_ios,
                                        color: Colors.deepPurple,size: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ///New Month
                      Container(
                        decoration:  const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.deepPurple,
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "July 2023",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      // Gross pay details
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Gross pay"),
                            Text("28.000"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("5 deductions"),
                            Text("-2.000"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Net Pay"),
                            Text("26.000"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      const Divider(
                        color: Colors.black12,
                        height: 1,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.download,
                                    color: Colors.deepPurple,size: 25),
                                onPressed: () {},
                              ),
                            ),
                            Container(height: 35,
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Text(
                                      "View Pay Slip",
                                      style: TextStyle(color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(Icons.arrow_forward_ios,
                                      color: Colors.deepPurple,size: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      /// New Month
                      Container(

                        decoration:  const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          color: Colors.deepPurple,
                        ),
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "June 2023",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      // Gross pay details
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Gross pay"),
                            Text("28.000"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("5 deductions"),
                            Text("-2.000"),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Net Pay"),
                            Text("26.000"),
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      const Divider(
                        color: Colors.black12,
                        height: 1,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: IconButton(
                                icon: Icon(Icons.download,
                                    color: Colors.deepPurple,size: 25),
                                onPressed: () {},
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: TextButton(
                                onPressed: () {},
                                child: const Row(
                                  children: [
                                    Text(
                                      "View Pay Slip",
                                      style: TextStyle(color: Colors.deepPurple,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5),
                                    Icon(Icons.arrow_forward_ios,
                                      color: Colors.deepPurple,size: 20,),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),

            ),

          ],
        ),
      ),
    );
  }
}
