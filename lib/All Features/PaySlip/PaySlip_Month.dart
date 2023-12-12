import 'package:flutter/material.dart';
import 'package:hrm_application/HomeScreen.dart';

class PaySlipMonth extends StatelessWidget {
  const PaySlipMonth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: SafeArea(
        child: ListView(
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
                Text("August",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(Icons.download, color: Colors.white, size: 35),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 310,
                  width: 400,
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  child:  Column(
                      children: [
                        Container(
                          height: 50, // Customize the height
                          width: 400,
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Employee Name"),
                              Text("Mahafujer Rahman"),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 50, // Customize the height
                          width: 400,
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Department"),
                              Text("Informantion Technology"),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 50, // Customize the height
                          width: 400,
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Designation"),
                              Text("3D Product Designer"),
                            ],
                          ),
                        ),
                        Container(
                          height: 100, // Customize the height
                          width: 400,
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 60,
                                width: 160, // Customize the width
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Employee Id"),
                                    Text("1233223"),
                                  ],
                                ),
                              ),
                              SizedBox(width: 10),
                              Container(
                                height: 60,
                                width: 160, // Customize the width
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Per Days"),
                                    Text("31"),
                                  ],
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

            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 510,
                  width: 400,
                  color: Colors.white,
                  padding: EdgeInsets.all(20),
                  child:  Column(
                    children: [
                      Container(
                        height: 50, // Customize the height
                        width: 400,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pay",style: TextStyle(color: Colors.deepPurple,
                                fontWeight: FontWeight.bold,fontSize: 20),),
                            Icon(Icons.info,size: 25,color: Colors.deepPurple,)
                           
                          ],
                        ),
                      ),
                      Container(
                        height: 50, // Customize the height
                        width: 400,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pay Salary"),
                            Text("400"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50, // Customize the height
                        width: 400,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pay Salary"),
                            Text("400"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50, // Customize the height
                        width: 400,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pay Salary"),
                            Text("400"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50, // Customize the height
                        width: 400,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pay Salary"),
                            Text("400"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50, // Customize the height
                        width: 400,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pay Salary"),
                            Text("400"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50, // Customize the height
                        width: 400,
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20.0), // Set border radius to 20
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Pay Salary",style: TextStyle(color: Colors.white,
                                fontSize: 20,fontWeight: FontWeight.bold),),
                            Text("2000",style: TextStyle(color: Colors.white,
                                fontSize: 20,fontWeight: FontWeight.bold),),
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
