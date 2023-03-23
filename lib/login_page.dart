import 'package:demo/home_page.dart';
import 'package:demo/square_tile.dart';
import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
    required String steps,
    required String status,
  })  : _steps = steps,
        _status = status;

  final String _steps;
  final String _status;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.deepPurple[500],
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Colors.deepPurpleAccent, Colors.purple],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                // design box
                GlassContainer.clearGlass(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width / 0.9,
                  borderColor: Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'lib/images/walking.png',
                  ),
                ),

                // walk it text
                Text(
                  'Walk It.',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inkfree',
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 20),

                //Some walk it caps
                Text(
                  'Web3 Meets Real Life, Get Rewarded for Walking...',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontFamily: 'Inkfree',
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(
                  height: 90,
                ),

                // google icon and apple icon
                Row(
                  children: [
                    Expanded(child: Divider(color: Colors.white, thickness: 1)),
                    LogoTile(
                      imagePath: 'lib/images/google.png',
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return HomePage(
                              steps: widget._steps, status: widget._status);
                        }));
                      },
                    ),
                    Expanded(
                        child: Divider(color: Colors.white, thickness: 0.4)),
                    LogoTile(
                      imagePath: 'lib/images/apple.png',
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return HomePage(
                              steps: widget._steps, status: widget._status);
                        }));
                      },
                    ),
                    Expanded(child: Divider(color: Colors.white, thickness: 1)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
