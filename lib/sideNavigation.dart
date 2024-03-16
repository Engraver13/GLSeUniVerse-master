import 'package:GLSeUniVerse/colors.dart';
import 'package:GLSeUniVerse/editProfile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class sideNavigation extends StatelessWidget {
  const sideNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primary,
      child: ListView(children: [
        UserAccountsDrawerHeader(
          accountName: Text("Abhi Engraver"),
          accountEmail: Text("engraver18@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1531256456869-ce942a665e80?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTI4fHxwcm9maWxlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
            radius: 30,
          ),
          decoration: BoxDecoration(
            color: mainFontColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: ListTile(
            leading: Icon(
              Icons.edit,
              size: 30,
              color: mainFontColor,
            ),
            title: Text(
              "Edit Profile",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: mainFontColor),
            ),
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => editProfile(),
                  ));
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            Icons.qr_code_2_outlined,
            size: 30,
            color: mainFontColor,
          ),
          title: Text(
            "Qr-Code",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: mainFontColor),
          ),
          onTap: () => Get.toNamed('/qrPage'),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            CupertinoIcons.barcode,
            size: 30,
            color: mainFontColor,
          ),
          title: Text(
            "Barcode",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: mainFontColor),
          ),
          onTap: () => Get.toNamed('/barcodePage'),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            size: 30,
            color: mainFontColor,
          ),
          title: Text(
            "Logout",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: mainFontColor),
          ),
          onTap: () => Get.toNamed('/qrPage'),
        ),
      ]),
    );
  }
}
