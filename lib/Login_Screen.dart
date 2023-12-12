import 'package:flutter/material.dart';
import 'package:hrm_application/All%20Features/PaySlip/PaySlip.dart';
import 'package:hrm_application/HomeScreen.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() =>_LogInScreen ();
}
class _LogInScreen extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 60), // Adjust the height of SizedBox
              const Text(
                "Welcome Back!🎉",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            const Text("Sign In to Continue",
              style: TextStyle(
                  color: Colors.black
              ),),

            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),// Add padding here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Company ID",style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  Container(
                    width: 400,
                    height: 60,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your Company ID",
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0), // Add left and right padding here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("User ID", style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  Container(
                    width: 400,
                    height: 60,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your User ID",
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0), // Add padding here
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone Number",style: TextStyle(fontSize: 20)),
                  SizedBox(height: 10),
                  Container(
                    width: 400,
                    height: 60,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Enter your Phone Number",
                        labelStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0), // Add padding here
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  minimumSize: Size(400, 60),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
                child: const Text('Log In',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ),

            const SizedBox(height: 215),
            Container(
              width: 450,
              height: 55,
              color: Colors.deepPurple,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline_rounded,size: 20,
                        color: Colors.white,
                      ),
                      SizedBox(width: 8),
                      Text(
                        "This application is valid for one device only.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    ]),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}