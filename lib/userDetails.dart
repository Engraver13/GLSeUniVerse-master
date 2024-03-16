import 'package:GLSeUniVerse/colors.dart';
import 'package:GLSeUniVerse/securityHomePage.dart';
import 'package:flutter/material.dart';

class userDetails extends StatefulWidget {
  const userDetails({super.key});

  @override
  State<userDetails> createState() => _userDetailsState();
}

class _userDetailsState extends State<userDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //student Image
                SizedBox(
                  height: 120,
                ),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1531256456869-ce942a665e80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTI4fHxwcm9maWxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 10,
                ),
                // student Name
                Text(
                  "Abhi Engraver",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                // Enrollment no of student
                Text(
                  "201800319010099",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                // student Email
                Text(
                  "engraver13@gmail.com",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: 350,
                  decoration: BoxDecoration(
                      color: buttoncolor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: grey.withOpacity(0.03),
                          spreadRadius: 10,
                          blurRadius: 3,
                          // changes position of shadow
                        ),
                      ]),
                  child: Center(
                      child:
                          //Department
                          Text(
                    "Faculty of Computer Application and IT - FCAIT",
                    style: TextStyle(color: white),
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  width: 350,
                  decoration: BoxDecoration(
                      color: buttoncolor,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: grey.withOpacity(0.03),
                          spreadRadius: 10,
                          blurRadius: 3,
                          // changes position of shadow
                        ),
                      ]),
                  child: Center(
                      //batch,course
                      child: Text(
                    "Masters of Science in Information Technology\nBatch : 2023-2025",
                    style: TextStyle(color: white),
                  )),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.toNamed('/barcodePage');
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => securityPage(),
                        ));
                  },
                  child: Text(
                    'Approved',
                    style: TextStyle(
                        fontSize: 20,
                        color: buttoncolor,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(backgroundColor: white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
