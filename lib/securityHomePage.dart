import 'package:flutter/material.dart';
import 'package:get/get.dart';

class securityPage extends StatefulWidget {
  const securityPage({super.key});

  @override
  State<securityPage> createState() => _securityPageState();
}

class _securityPageState extends State<securityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 240,
            ),
            Center(
              child: Container(
                width: 350,
                height: 50,
                padding: EdgeInsets.only(left: 14, bottom: 10, right: 14),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 221, 237, 245),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      hintText: "Search by enrollment id"),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(63, 121, 235, 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/scanQrCode');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.qr_code_2,
                      size: 85,
                      color: Colors.white,
                    ),
                    Center(
                      child: Text(
                        "Scan\nQr Code",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 63, 121, 235)),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 63, 121, 235),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed('/visitorEntryPage');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.book_rounded,
                      size: 85,
                      color: Colors.white,
                    ),
                    Center(
                      child: Text(
                        "Create\nVisitor\nEntry",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 63, 121, 235)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
