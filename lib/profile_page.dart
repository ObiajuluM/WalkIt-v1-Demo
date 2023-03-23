import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.purple, Colors.deepPurpleAccent],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                GlassContainer.frostedGlass(
                  shape: BoxShape.circle,
                  margin: const EdgeInsets.all(20),
                  // borderRadius: BorderRadius.only(
                  //   bottomLeft: Radius.circular(30),
                  //   bottomRight: Radius.circular(30),
                  // ),
                  width: 250,
                  height: 250,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Profile",
                          style: const TextStyle(
                            fontSize: 60,
                            fontFamily: 'InkFree',
                            fontWeight: FontWeight.bold,
                            // color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GlassContainer.clearGlass(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  borderRadius: BorderRadius.circular(10),
                  height: 50,
                  width: 300,
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                        fontFamily: 'InkFree', fontWeight: FontWeight.bold),
                  ),
                ),
                GlassContainer.clearGlass(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  borderRadius: BorderRadius.circular(10),
                  height: 50,
                  width: 300,
                  child: Text(
                    'johndoe@gmail.com',
                    style: TextStyle(
                        fontFamily: 'InkFree', fontWeight: FontWeight.bold),
                  ),
                ),
                GlassContainer.clearGlass(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.center,
                  borderRadius: BorderRadius.circular(10),
                  height: 50,
                  width: 300,
                  child: Text(
                    'Date Joined',
                    style: TextStyle(
                        fontFamily: 'InkFree', fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
