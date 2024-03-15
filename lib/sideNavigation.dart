import 'package:GLSeUniVerse/colors.dart';
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
            backgroundImage: AssetImage('images/profile.png'),
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
            onTap: () => Get.toNamed('/qrPage'),
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
            Icons.bar_chart_rounded,
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
