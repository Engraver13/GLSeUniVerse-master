import 'package:GLSeUniVerse/colors.dart';
import 'package:GLSeUniVerse/home.dart';
import 'package:GLSeUniVerse/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
// import 'package:get/get.dart';
import 'homePage.dart';
import 'loginPage.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    home: loginPage(),
  ));
}

// ignore_for_file: camel_case_types, non_constant_identifier_names

// class loginPage extends StatefulWidget {
//   const loginPage({super.key});

//   @override
//   State<loginPage> createState() => _loginPageState();
// }

// class _loginPageState extends State<loginPage> {
//   bool obscure_Text = true; //for hidding the password
//   bool isLoading = false; //for loader
//   var roles = ["Student", "Alumini", "Staff", "Guard"];
//   String? role;
//   List<dynamic> users = []; //store the user details from API

//   TextEditingController email = TextEditingController();
//   TextEditingController pass = TextEditingController();

//   var e = "";
//   var p = "";

//   void _toggleLoading() {
//     setState(() {
//       isLoading = !isLoading;
//     });
//   }

//   main() async {
//     var headers = {'Content-Type': 'application/json'};
//     var request = http.Request(
//         'POST', Uri.parse('https://poojan16.pythonanywhere.com/api/show1/'));
//     request.body = json.encode({"username": "$e", "password": "$p"});
//     request.headers.addAll(headers);
//     http.StreamedResponse response = await request.send();

//     if (response.statusCode == 200) {
//       print("User Found");
//       print(await response.stream.bytesToString());
//       // Get.toNamed('/studentHomePage');
//       Navigator.push(
//           context, MaterialPageRoute(builder: (context) => HomePage()));
//     } else {
//       print("User Not Found");
//       Fluttertoast.showToast(
//           msg: 'Invalid Credentials!',
//           toastLength: Toast.LENGTH_SHORT,
//           gravity: ToastGravity.BOTTOM,
//           fontSize: 16.0);
//       print(response.reasonPhrase);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//       body: SingleChildScrollView(
//         child: Center(
//           child: Container(
//             height: 800,
//             // color: Colors.yellow,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 // SizedBox(
//                 //   height: 80,
//                 // ),
//                 Text(
//                   "Welcome Back!!",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20,
//                       letterSpacing: 2),
//                 ),
//                 SizedBox(
//                   height: 6,
//                 ),
//                 Text(
//                   "Please enter your credentials",
//                   style: TextStyle(fontSize: 12),
//                 ),
//                 SizedBox(
//                   height: 40,
//                 ),
//                 // First : email text field
//                 Container(
//                   width: 350,
//                   child: TextField(
//                     controller: email,
//                     decoration: InputDecoration(
//                       labelText: "Email",
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // Second : password field
//                     Container(
//                       width: 350,
//                       child: TextField(
//                         controller: pass,
//                         obscureText: obscure_Text,
//                         decoration: InputDecoration(
//                           labelText: "Password",
//                           suffixIcon: IconButton(
//                               onPressed: () {
//                                 setState(() {
//                                   //this for password show or not
//                                   obscure_Text = !obscure_Text;
//                                 });
//                               },
//                               icon: Icon(Icons.remove_red_eye_rounded)),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 //drop down menu for role selection
//                 // ignore: avoid_unnecessary_containers
//                 Container(
//                   padding: EdgeInsets.all(10),
//                   decoration: BoxDecoration(
//                     // color: Colors.grey,
//                     border: Border.all(color: Colors.black),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   width: 350,
//                   child: DropdownButton(
//                     hint: Text("Select Role"),
//                     value: role,
//                     items: roles.map((String role) {
//                       return DropdownMenuItem(value: role, child: Text(role));
//                     }).toList(),
//                     onChanged: (String? selectedValue) {
//                       setState(() {
//                         role = selectedValue!;
//                       });
//                     },
//                     style: TextStyle(fontSize: 15, color: Colors.black),
//                     isExpanded: true,
//                     elevation: 8,
//                     underline: Container(),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),

//                 if (isLoading) CircularProgressIndicator(),
//                 //Login Button
//                 Container(
//                     width: 350,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         //fetchusers();
//                         _toggleLoading();

//                         Future.delayed(Duration(seconds: 3), () {
//                           _toggleLoading();
//                         });
//                         e = email.text;
//                         p = pass.text;
//                         print(e);
//                         print(p);
//                         main();
//                         // Get.toNamed('/studentHomePage');
//                       },
//                       child: Text(
//                         "Log In",
//                         style: TextStyle(
//                             fontSize: 15, fontWeight: FontWeight.bold),
//                       ),
//                       style: ElevatedButton.styleFrom(
//                           backgroundColor: Color.fromARGB(255, 63, 121, 235)),
//                     )),
//               ],
//             ),
//           ),
//         ),
//       ),
//     ));
//   }

//   void fetchusers() async {
//     print("Fetch user called");
//     const url = 'https://poojan16.pythonanywhere.com/user/?format=json';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     final body = response.body;
//     final json = jsonDecode(body);

//     setState(() {
//       print(json);
//     });
//     // final user = users[1];
//     // final name = user['name']['first'];
//     // final email = user ['email'];
//     // print(body);
//     // print(name);
//     // print(email);
//   }
// }

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  TextEditingController _email = TextEditingController();
  TextEditingController password = TextEditingController();

  var _enrollment = '';
  var _password = '';

  bool obscure_Text = true; //for hidding the password

  void _showpass() {
    setState(() {
      obscure_Text = !obscure_Text;
    });
  }

  var roles = ["Student", "Alumini", "Staff", "Guard"];
  String? role;

  // Check User Credentials
  main() async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST', Uri.parse('https://poojan16.pythonanywhere.com/api/show1/'));
    request.body =
        json.encode({"username": "$_enrollment", "password": "$_password"});
    request.headers.addAll(headers);
    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print("User Found");
      print(await response.stream.bytesToString());
      // Get.toNamed('/studentHomePage');

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => homePage(),
          ));
    } else {
      print("User Not Found");
      Fluttertoast.showToast(
          msg: 'Invalid Credentials!',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          fontSize: 16.0);
      print(response.reasonPhrase);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
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
              height: 50,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: grey.withOpacity(0.03),
                        spreadRadius: 10,
                        blurRadius: 3,
                        // changes position of shadow
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 15, bottom: 5, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Enrollment Number",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xff67727d)),
                      ),
                      TextField(
                        controller: _email,
                        cursorColor: black,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: black),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            prefixIconColor: black,
                            hintText: "Enrollment Number",
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: grey.withOpacity(0.03),
                        spreadRadius: 10,
                        blurRadius: 3,
                        // changes position of shadow
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 15, bottom: 5, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color(0xff67727d)),
                      ),
                      TextField(
                        controller: password,
                        obscureText: obscure_Text,
                        cursorColor: black,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: black),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock_outline_rounded),
                            prefixIconColor: Colors.black,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  _showpass();
                                },
                                icon: Icon(Icons.remove_red_eye_rounded)),
                            suffixIconColor: Colors.black,
                            hintText: "Password",
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                // color: Colors.grey,
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8),
              ),
              width: 350,
              child: DropdownButton(
                hint: Text("Select Role"),
                value: role,
                items: roles.map((String role) {
                  return DropdownMenuItem(value: role, child: Text(role));
                }).toList(),
                onChanged: (String? selectedValue) {
                  setState(() {
                    role = selectedValue!;
                  });
                },
                style: TextStyle(fontSize: 15, color: Colors.black),
                isExpanded: true,
                elevation: 8,
                underline: Container(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                _enrollment = _email.text;
                _password = password.text;
                main();
              },
              child: Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: buttoncolor,
                    borderRadius: BorderRadius.circular(25)),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26.0, right: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Text(
                  //   "Signup",
                  //   style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 15,
                  //       fontWeight: FontWeight.w300),
                  // ),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
