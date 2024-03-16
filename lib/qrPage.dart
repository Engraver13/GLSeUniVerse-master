// ignore_for_file: file_names

import 'package:GLSeUniVerse/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class qrPage extends StatefulWidget {
  const qrPage({super.key});

  @override
  State<qrPage> createState() => _qrPageState();
}

class _qrPageState extends State<qrPage> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      // bottomNavigationBar: BottomNavigationBar(
      //   selectedItemColor: CupertinoColors.activeBlue,
      //   onTap: (index) {
      //     setState(() {
      //       myIndex = index;
      //     });

      //     if (index == 0) {
      //       Get.toNamed('/qrPage');
      //     } else if (index == 1) {
      //       Get.toNamed('/studentHomePage');
      //     } else if (index == 2) {
      //       Get.toNamed('/barcodePage');
      //     }
      //   },
      //   currentIndex: myIndex,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR Code'),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.bar_chart_sharp), label: 'Barcode'),
      //   ],
      // ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //student Image
              CircleAvatar(
                radius: 50,
                //backgroundImage: AssetImage('images/profile.png'),
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1531256456869-ce942a665e80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTI4fHxwcm9maWxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
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
              // Qr Code
              Image(
                image: AssetImage('images/qrCode.webp'),
                height: 250,
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
                        Text("Faculty of Computer Application and IT - FCAIT",
                            style: TextStyle(color: white))),
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
              // SizedBox(
              //   height: 20,
              // ),
              // ElevatedButton(
              //     onPressed: () {
              //       Get.toNamed('/barcodePage');
              //     },
              //     child: Text('Barcode Page'))
            ],
          ),
        ),
      ),
    );
  }
}
